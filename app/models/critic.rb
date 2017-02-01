class Critic < ActiveRecord::Base
	belongs_to :department, touch: true
	belongs_to :user
	has_many :glance_names
	has_many :feature_names
	has_many :spec_names
	has_many :concern_names
end
