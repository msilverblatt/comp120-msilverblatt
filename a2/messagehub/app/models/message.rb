class Message < ActiveRecord::Base
#	attr_accessible :content, :username, :app_id
	validates_presence_of :content, :username, :app_id
end
