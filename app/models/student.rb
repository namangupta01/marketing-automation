class Student < ApplicationRecord
	belongs_to :user
	belongs_to :batch
	belongs_to :lead_source
	belongs_to :lead_group
	belongs_to :stage_of_pipeline
end
