class Event < ActiveRecord::Base
	belongs_to :admin
	has_many :users
end
