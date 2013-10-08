class MessagesController < ApplicationController
  def index
  	@messages = Message.order('created_at desc')
#    respond_to do |format|
#      format.json { render json: @messages }
#    end
  end

  def messagessince
    @newmessages = Message.order('created_at desc').where("id > ?", params[:id])
    puts @newmessages.count
    respond_to do |format| 
      format.json { render :json => @newmessages }

    end
  end

  def create
  	@message = Message.new(params[:message].permit(:content, :username, :app_id))
  	if @message.save
  		flash[:notice] = "Message posted successfully"
  		redirect_to message_path(@message)
  	else
  		flash[:error] = "Error posting message"
  	end
#  	unless (message[content] == nil) or (message[username] == nil) or (message[app_id] == nil)
#  		@message = Message.new( :content => content, :username => username, :app_id => app_id, :active => true)
#  	end
  end

  def show
  	@message = Message.find(params[:id])
  rescue
  	@message = nil
  end
end
