class Answer < ActiveRecord::Base
	belongs_to :question, touch: true
	belongs_to :user
end
