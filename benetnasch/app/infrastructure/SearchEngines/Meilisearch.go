package SearchEngines

import (
	"benetnasch/app/facade/model"
	"benetnasch/app/infrastructure/config"
	"benetnasch/app/infrastructure/exception"
	"benetnasch/app/infrastructure/persistence/ormInit"
	"benetnasch/app/infrastructure/shared"
	"github.com/goccy/go-json"
	"github.com/meilisearch/meilisearch-go"
	"log"
	"time"
)

func GetClient() *meilisearch.Client {
	meili := new(config.MeiliSearch).MeiliSearch()
	client := meilisearch.NewClient(meilisearch.ClientConfig{
		Host:   meili.URL,
		APIKey: meili.ApiKey,
	})
	return client
}

func Search(keywords string) []interface{} {
	client := GetClient()
	searchResponse, err := client.Index("articles").Search(keywords, &meilisearch.SearchRequest{
		AttributesToRetrieve:  []string{"*"},
		Limit:                 1000,
		Offset:                0,
		AttributesToHighlight: []string{"articleTitle", "articleContent"},
		CropLength:            50,
		HighlightPreTag:       shared.PRE_TAG,
		HighlightPostTag:      shared.POST_TAG,
	})
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	if searchResponse.EstimatedTotalHits == 0 {
		return []interface{}{}
	}
	return searchResponse.Hits
}

func docSyncTask() {
	ticker := time.NewTicker(time.Minute * 10)
	for range ticker.C {
		client := GetClient()
		var articleSearchDTOs []model.ArticleSearchDTO
		err := ormInit.GetEngine().SQL("select id, article_title, SUBSTR(article_content, 1, 500) AS " +
			"article_content, is_delete, status from t_article where is_delete = 0 and status = 1").Find(&articleSearchDTOs)
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
			continue
		}
		var docs []map[string]interface{}
		data, _ := json.Marshal(articleSearchDTOs)
		err = json.Unmarshal(data, &docs)
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
			continue
		}
		_, err = client.Index("articles").UpdateDocuments(docs)
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
			continue
		}
		log.Println("-----docs completed with synchronization-----")
	}
}

func init() {
	client := GetClient()
	index, err1 := client.GetIndex("articles")
	if index == nil && err1 != nil {
		var articleSearchDTOs []model.ArticleSearchDTO
		err := ormInit.GetEngine().SQL("select id, article_title, SUBSTR(article_content, 1, 500) AS " +
			"article_content, is_delete, status from t_article where is_delete = 0 and status = 1").Find(&articleSearchDTOs)
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
		}
		var docs []map[string]interface{}
		data, _ := json.Marshal(articleSearchDTOs)
		err = json.Unmarshal(data, &docs)
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
		}
		_, err = client.Index("articles").AddDocuments(docs)
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
		}
	}
	// 开启一个协程执行search同步工作
	go docSyncTask()
}
