class SubjectArea < ApplicationRecord
	belongs_to :uni
	has_many :subjects
end
