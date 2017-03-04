class Question < ActiveRecord::Base
	belongs_to :critic, touch: true
	has_many :answers
end
