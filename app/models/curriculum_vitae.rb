class CurriculumVitae < ActiveRecord::Base
  include Referable
  
  belongs_to :user
  
  has_many :achievements, through: :references_a, source: :reference_b, source_type: :Achievement
  has_many :certifications, through: :references_a, source: :reference_b, source_type: :Certification
  has_many :companies, through: :references_a, source: :reference_b, source_type: :Company
  has_many :contacts, through: :references_a, source: :reference_b, source_type: :Contact
  has_many :educations, through: :references_a, source: :reference_b, source_type: :Education
  has_many :experiences, through: :references_a, source: :reference_b, source_type: :Experience
  has_many :languages, through: :references_a, source: :reference_b, source_type: :Language
  has_many :patents, through: :references_a, source: :reference_b, source_type: :Patent
  has_many :people, through: :references_a, source: :reference_b, source_type: :Person
  has_many :projects, through: :references_a, source: :reference_b, source_type: :Project
  has_many :publications, through: :references_a, source: :reference_b, source_type: :Publication
  has_many :recommendations, through: :references_a, source: :reference_b, source_type: :Recommendation
  has_many :skills, through: :references_a, source: :reference_b, source_type: :Skill
  has_many :tasks, through: :references_a, source: :reference_b, source_type: :Task
  has_many :tools, through: :references_a, source: :reference_b, source_type: :Tool
  
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
