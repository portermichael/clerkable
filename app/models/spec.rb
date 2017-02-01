class Spec < ActiveRecord::Base
	belongs_to :review, touch: true
	belongs_to :user
end
