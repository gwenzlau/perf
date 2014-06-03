class Order < ActiveRecord::Base

	has_many :items
	validates :name, presence: true
	validates :address, presence: true
	validates :email, presence: true
end
