class Relationship < ActiveRecord::Base
  belongs_to :user
  belongs_to :follower, class_name: "Relationship"
  belongs_to :followed, class_name: "Relationship"
end
