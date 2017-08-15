class UserMailer < ApplicationMailer
  default from: 'trackfitbros@gmail.com'
  
  def welcome_email(user)
    @user = user
    @url = 'http://trackfit-ojaskulkarni.c9users.io:8080'
    mail(to: @user.email,
         subject: 'Account Confirmation',
         template_path: 'user_mailer',
         template_name: 'confirmation_instructions')
  end
  
  def receive(email)
    page = Page.find_by(address: email.to.first)
    page.emails.create(
      subject: email.subject,
      body: email.body
    )
 
    if email.has_attachments?
      email.attachments.each do |attachment|
        page.attachments.create({
          file: attachment,
          description: email.subject
        })
      end
    end
  end
end
