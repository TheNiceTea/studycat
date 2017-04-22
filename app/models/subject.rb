class Subject < ApplicationRecord
	has_many :uploads
	belongs_to :uni
end
