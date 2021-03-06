class ContactsController < ApplicationController
    
        def new
                @contact = Contact.new # create a new blank contact object everytime the page contact is viewed
                #contact object has name, email and comments. @contact is the instance variable
        end
        
        def create
                @contact = Contact.new(contact_params)
                
                if @contact.save  # if contact object successfully saved in DB
                name = params[:contact][:name]
                email = params[:contact][:email]
                body = params[:contact][:comments]
                
                ContactMailer.contact_email(name,email,body).deliver
                
                flash[:success] ="Message Sent!" #improved flash msg
                redirect_to new_contact_path
                
                #        redirect_to new_contact_path, notice: "Message Sent" # direct :notice msg
                else
                        #flash[:error] = @contact.errors.full_messages.join(", " ) #improved error msgs
                        flash[:danger] = @contact.errors.full_messages.join(", ") # changed the flash hash to danger to match bootstrp class
                        redirect_to new_contact_path
                        
                        #redirect_to new_contact_path, notice: "Error Occured" # basic way of noticing error msg
                end
                
        end
        
        private #security - what needs to be saved in DB
        def contact_params
                params.require(:contact).permit(:name , :email, :comments)
        end
end