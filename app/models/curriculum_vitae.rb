class CurriculumVitae < ActiveRecord::Base
  has_many :experiences
  has_many :educations
  has_many :skills
  has_many :tools
  has_many :languages
  has_many :achievements
  has_many :certifications
  has_many :patents
  has_many :publications
  has_many :recommendations
  
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
