class Message < ActiveRecord::Base
#	attr_accessible :content, :username, :app_id
	validates_presence_of :content, :username, :app_id
	validates :content, length: { maximum: 160}, allow_blank: false
	validates :username, length: {minimum: 3, maximum: 60}, allow_blank: false
	belongs_to :app
	after_initialize :default_values

  	private
    	def default_values
      		self.active ||= true
    	end
end
