class Project < ActiveRecord::Base
  has_many :curriculum_vitaes
  has_many :people
  has_many :tasks
  has_many :skills
  has_many :languages
  
  # name or title
  # occupation (from which job) / related to company (?)
  # date or date-range
  # project URL
  # team members (of project)
  # description
  # tasks []
  # skills []
end
