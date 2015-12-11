class Skill < ActiveRecord::Base
  has_many :curriculum_vitaes
  has_many :tools
  
  # name_or_title
  # category [enum]
  # proficiency
  # years_of_experience (?)
end
