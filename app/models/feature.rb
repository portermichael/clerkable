class Feature < ActiveRecord::Base
	belongs_to :review, touch: true
	belongs_to :user
end
