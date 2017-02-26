class Product < ActiveRecord::Base
	belongs_to :department, touch: true
	belongs_to :user
	has_many :reviews
	has_many :orders, through: :ordered_products
	has_many :carts, through: :carted_products
	has_many :critics, through: :reviews

	validates :product_name, presence: true;
	validates :department_id, presence: true;
	validates :youtube_thumbnail_id, presence: true;
	validates :msrp, presence: true;
	validates :expected, presence: true;
end
