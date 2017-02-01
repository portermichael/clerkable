class Order < ActiveRecord::Base
	belongs_to :user

    has_many :products, through: :ordered_products

end
