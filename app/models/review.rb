class Review < ActiveRecord::Base
	belongs_to :product, touch: true
	belongs_to :user
	has_many :features

end
