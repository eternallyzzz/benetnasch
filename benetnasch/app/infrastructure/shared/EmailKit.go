package shared

import (
	"benetnasch/app/facade/model"
	"benetnasch/app/infrastructure/config"
	"benetnasch/app/infrastructure/exception"
	"github.com/wneessen/go-mail"
	"html/template"
	"io"
	"log"
)

func SendHtmlEmail(dto model.EmailDTO) {
	m := mail.NewMsg()
	err := m.From(config.SmtpEmail)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	err = m.To(dto.Email)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	m.Subject(dto.Subject)
	t := template.New("common.html")
	parse, err := t.ParseFiles(dto.Template)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	err = m.SetBodyHTMLTemplate(parse, dto.CommentMap)
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	client, err := mail.NewClient(config.SmtpName, mail.WithPort(config.SmtpPort), mail.WithSMTPAuth(mail.SMTPAuthPlain),
		mail.WithUsername(config.SmtpEmail), mail.WithPassword(config.SmtpPassword), mail.WithSSL())
	mail.WithDebugLog()
	if err != nil {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
	err = client.DialAndSend(m)
	if err != nil && err != io.EOF {
		exception.Logger.Println(err)
		exception.PrintStack()
		log.Println(err)
	}
}
