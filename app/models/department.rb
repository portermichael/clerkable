class Department < ActiveRecord::Base
	has_many :products, dependent: :destroy
	  has_many :active_relationships, class_name:  "Relationship",
                                  foreign_key: "follower_id",
                                  dependent:   :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :passive_relationships, class_name:  "Relationship",
                                   foreign_key: "followed_id",
                                   dependent:   :destroy
  has_many :followers, through: :passive_relationships, source: :follower
	has_ancestry
	belongs_to :user
	#validates :user_id, presence: true;
	validates :department_name, presence: true;
	validates :youtube_id, presence: true;
	validates :youtube_thumbnail_id, presence: true;
	#validates :first_glance_name, presence: true;
	#validates :second_glance_name, presence: true;
	#validates :third_glance_name, presence: true;
end
