class Subject < ApplicationRecord
	has_many :resumes
	belongs_to :subject_area
end
