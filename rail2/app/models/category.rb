class Category < ActiveRecord::Base
 	validates_presence_of :name
	has_and_belongs_to_many :photos
	acts_as_tree

	def ancestors_name
		if parent
			parent.ancestors_name + parent.name + ':'
		else
			""
		end
	end

	def long_name
		ancestors_name + name
	end
end
