package rabbit

import (
	"benetnasch/app/infrastructure/config"
	"benetnasch/app/infrastructure/exception"
	"context"
	"github.com/goccy/go-json"
	amqp "github.com/rabbitmq/amqp091-go"
	"log"
	"time"
)

func ConvertAndSend(exchange, key string, value interface{}) {
	jsonV, _ := json.Marshal(value)
	// 获取连接
	rabbit := new(config.RabbitMQ).RabbitMQ()
	conn, err := amqp.Dial(rabbit.URL)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	defer func(conn *amqp.Connection) {
		err := conn.Close()
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
			return
		}
	}(conn)
	// 声明通道
	channel, err := conn.Channel()
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	defer func(channel *amqp.Channel) {
		err := channel.Close()
		if err != nil {
			exception.Logger.Println(err)
			exception.PrintStack()
			log.Println(err)
			return
		}
	}(channel)
	err = channel.ExchangeDeclare(exchange, "fanout", true, false, false, false, nil)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()
	err = channel.PublishWithContext(ctx, exchange, key, false, false, amqp.Publishing{
		ContentType: "text/plain",
		Body:        jsonV,
	})
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
}
