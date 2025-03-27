class PagesController <  ApplicationController
    def home  
    end
    def about
    end

    def contact
      @message = Message.new
    end
  
    def submit_contact
      @message = Message.new(message_params)
      if @message.save
        flash[:notice] = "Thank you for your message, we will contact you soon."
        redirect_to contact_path
      else
        flash[:alert] = "There was an error submitting your message."
        render :contact
      end
    end
  
    private
  
    def message_params
      params.require(:message).permit(:name, :email, :message)
    end
end
