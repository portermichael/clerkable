class GlanceName < ActiveRecord::Base
	belongs_to :critic, touch: true
	belongs_to :user
	
end
