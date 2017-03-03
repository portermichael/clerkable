class Review < ActiveRecord::Base
	belongs_to :product, touch: true
	belongs_to :user
	belongs_to :critic
	has_many :features



end
