class TeachersSchool < ApplicationRecord
	belongs_to :teacher
	belongs_to :school_class
end
