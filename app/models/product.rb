class Product < ActiveRecord::Base
	belongs_to :department
	belongs_to :user

	validates :product_name, presence: true;
	validates :department_id, presence: true;
	validates :youtube_id, presence: true;
	validates :youtube_thumbnail_id, presence: true;
	#validates :msrp, presence: true;
	#validates :expected, presence: true;
end
