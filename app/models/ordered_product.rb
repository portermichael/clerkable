class OrderedProduct < ActiveRecord::Base
	belongs_to :order, touch: true
	belongs_to :product, touch: true
end
