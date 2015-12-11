class Person < ActiveRecord::Base
  has_many :curriculum_vitaes
  has_many :publications
  has_many :recommendations
  has_many :patents
  
  GENDERS = [:male, :female, :other]
  
  MARITAL_STATUSES = [:single, :married, :divorced, :its_complicated]
  
  # full_name
  # first_name
  # middle_name / middle_initial
  # last_name
  # age
  # birth_date
  # gender (enum) -> [
  # "male",
  #   "female",
  #   "other"
  # ]
  # marital_status (enum) -> [
  # "single",
  #   "married",
  #   "divorced",
  #   "its_complicated"
  # ]
  # avatar_or_photo (?)
  # languages []
end
