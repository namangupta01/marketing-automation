class Batch < ApplicationRecord
	has_many :students
	belongs_to :user
end
