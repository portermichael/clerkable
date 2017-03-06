class Critic < ActiveRecord::Base
	belongs_to :department, touch: true
	belongs_to :user
	has_many :feature_names
	has_many :questions
	has_many :reviews

	has_many :products, through: :reviews


  def review_critic
  	Review.where(critic_id: id)
  end

  def product_critic
  	Product.where(review_id: id)
  end
end
