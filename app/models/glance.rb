class Glance < ActiveRecord::Base
	belongs_to :department, touch: true
	belongs_to :user

	validates :glance_name, presence: true;
end
