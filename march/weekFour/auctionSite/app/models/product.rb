class Product < ActiveRecord::Base
	belongs_to :users
	has_many :bids

	validates :title, presence: true
	validates :description, presence: true
	validates :deadline, presence: true
	validates :price, presence: true
end
