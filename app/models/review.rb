class Review < ActiveRecord::Base
	belongs_to :product, touch: true
	belongs_to :user
	has_many :glances
	has_many :features
	has_many :specs
	has_many :concerns
end
