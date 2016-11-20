class Department < ActiveRecord::Base
	has_many :products, dependent: :destroy
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
