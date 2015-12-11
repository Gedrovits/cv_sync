class Task < ActiveRecord::Base
  has_many :curriculum_vitaes
  has_many :projects
  has_many :skills
  
  # name_or_title
  # skills []
end
