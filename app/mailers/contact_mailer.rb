class ContactMailer < ActionMailer::Base
    default to: "muthusamypoorani@gmail.com"
    
    def contact_email(name , email , body)
        @name = name
        @email = email
        @body = body
        mail(from: email, subject: "NewContact Submitted")
    end
    
end