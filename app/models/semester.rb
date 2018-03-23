class Semester < ApplicationRecord
    validates :semester_num, presence: true
    validates :year, presence: true
    validates :start_date, presence: true
end
