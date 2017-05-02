class Subject < ApplicationRecord
	has_many :uploads
	belongs_to :subject_area
end
