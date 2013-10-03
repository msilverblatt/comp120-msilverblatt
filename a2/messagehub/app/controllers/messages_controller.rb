class MessagesController < ApplicationController
  def index
  	@messages = Message.all
  end

  def create
  	@message = Message.new(params[:message].permit(:content, :username, :app_id))
  	@message.save
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
