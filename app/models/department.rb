class Department < ActiveRecord::Base
	has_many :products
	has_ancestry
end
