class Question < ActiveRecord::Base
	belongs_to :critic
	has_many :answers
end
