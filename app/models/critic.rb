class Critic < ActiveRecord::Base
	belongs_to :department, touch: true
	belongs_to :user
	has_many :feature_names
	has_many :questions

	has_many :products, through: :reviews
end
