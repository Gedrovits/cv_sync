class Recommendation < ActiveRecord::Base
  has_many :curriculum_vitaes
  has_many :people
  has_many :companies
  
  # name or title
  # description
  # contact
  # proof_of_concept
end
