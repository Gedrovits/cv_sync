class CurriculumVitae < ActiveRecord::Base
  has_many :achievements
  has_many :certifications
  has_many :companies
  has_many :contacts
  has_many :educations
  has_many :experiences
  has_many :languages
  has_many :patents
  has_many :people
  has_many :projects
  has_many :publications
  has_many :recommendations
  has_many :skills
  has_many :tasks
  has_many :tools
  
  WORKING_TIMES = [:full_time, :part_time, :freelance_or_outsource, :founder_or_cofounder]
  
  STATUSES = [:actively_looking_for, :pasively_looking_for, :looking_for_particular_opportunity]
  
  ## Summary
  # current_position / workplace
  # previous_position / workplace
  # what i am looking for
  # personal statement / summary
  
  ## Preferred
  # industries_or_market
  # working_time (enum) -> [
  # "full_time",
  #   "part_time",
  #   "freelance_outsource",
  #   "founder_or_cofounder"
  # ]
  # minimum_salary
  # locations_or_countries
  # status (enum) -> [
  # "actively looking for",
  #   "passively looking for",
  #   "looking for particular opportunity"
  # ]
  
  ## Experience
  # Position
  # company name
  # title
  # location
  # time period
  # description
  
  ## Education
  
  ## Links and Social
  
  ## Overall Skills
  
  ## Overall Languages
  
  ## Overall Tools of Trade
  
  ## Overall Achivements
  
  ## Certifications
  
  ## Patents
  
  ## Publications
  
  ## Recommendations
end
