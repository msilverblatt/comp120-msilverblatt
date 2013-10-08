class Message < ActiveRecord::Base
#	attr_accessible :content, :username, :app_id
	validates_presence_of :content, :username, :app_id
	belongs_to :app
	after_initialize :default_values

  	private
    	def default_values
      		self.active ||= true
    	end
end
