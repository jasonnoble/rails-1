class Photo < ActiveRecord::Base
	belongs_to :category
	has_one :file
	has_many :slides
	has_and_belongs_to_many :categories
end
