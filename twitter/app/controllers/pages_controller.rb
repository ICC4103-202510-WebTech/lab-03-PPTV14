class PagesController <  ApplicationController
    def home  
    end
    def about
    end
    def contact
    end
    def submit_contact
        @message = Message.new(message_params)
        if @message.save
          flash[:notice] = "Thank you for your message, we will contact you soon."
          redirect_to contact_path
        else
          flash[:alert] = "There was an error. Please try again."
          render :contact
        end
      end
      
end
