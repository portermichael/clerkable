class CartedProduct < ActiveRecord::Base
	belongs_to :cart, touch: true
	belongs_to :product, touch: true
end
