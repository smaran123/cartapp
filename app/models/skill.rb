class Skill < ActiveRecord::Base
  has_and_belongs_to_many :employees, join_table: :employee_skills

end
