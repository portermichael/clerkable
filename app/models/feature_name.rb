class FeatureName < ActiveRecord::Base
	belongs_to :critic, touch: true
	belongs_to :user
end
