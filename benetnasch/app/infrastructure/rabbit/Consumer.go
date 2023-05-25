package rabbit

import (
	"benetnasch/app/facade/model"
	"benetnasch/app/infrastructure/config"
	"benetnasch/app/infrastructure/exception"
	"benetnasch/app/infrastructure/shared"
	"github.com/goccy/go-json"
	amqp "github.com/rabbitmq/amqp091-go"
	"log"
)

func EmailListener() {
	// 获取连接
	rabbit := new(config.RabbitMQ).RabbitMQ()
	conn, err := amqp.Dial(rabbit.URL)
	if err != nil {
		log.Panicln(err.Error())
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
	err = channel.ExchangeDeclare(shared.EMAIL_EXCHANGE, "fanout", true, false, false, false, nil)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}

	q, err := channel.QueueDeclare(shared.EMAIL_QUEUE, true, false, false, false, nil)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}

	err = channel.QueueBind(q.Name, "", shared.EMAIL_EXCHANGE, false, nil)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}

	msgs, err := channel.Consume(q.Name, "", true, false, false, false, nil)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	c := make(chan bool)
	go func() {
		for d := range msgs {
			var emailDTO model.EmailDTO
			err := json.Unmarshal(d.Body, &emailDTO)
			if err != nil {
				exception.Logger.Println(err)
				exception.PrintStack()
				log.Println(err)
			}
			shared.SendHtmlEmail(emailDTO)
			log.Println("验证邮件已发送......")
		}
	}()
	<-c
}
