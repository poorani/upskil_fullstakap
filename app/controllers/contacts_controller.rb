class ContactsController < ApplicationController
    
        def new
                @contact = Contact.new # create a new blank contact object everytime the page contact is viewed
                #contact object has name, email and comments. @contact is the instance variable
        end
        
        def create
                @contact = Contact.new(contact_params)
                
                if @contact.save  # if contact object successfully saved in DB
                        redirect_to new_contact_path, notice: "Message Sent"
                else
                        redirect_to new_contact_path, notice: "Error Occured"
                end
                
        end
        
        private #security - what needs to be saved in DB
        def contact_params
                params.require(:contact).permit(:name , :email, :comments)
        end
end