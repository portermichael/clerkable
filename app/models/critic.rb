class Critic < ActiveRecord::Base
	belongs_to :department, touch: true
	belongs_to :user
	has_many :feature_names
	has_many :questions
	has_many :reviews

	has_many :products, through: :reviews


  def review_info
  	Review.where(critic_id: id)
  end
end
