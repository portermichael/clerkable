class Relationship < ActiveRecord::Base
  belongs_to :user
  belongs_to :department, touch: true
  belongs_to :follower, class_name: "Department", touch: true
end
