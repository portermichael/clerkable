class Relationship < ActiveRecord::Base
  belongs_to :user
  belongs_to :department
  belongs_to :follower, class_name: "Department"
end
