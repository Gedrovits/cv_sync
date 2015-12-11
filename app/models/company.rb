class Company < ActiveRecord::Base
  has_many :curriculum_vitaes
  has_many :experiences
  has_many :people
  has_many :projects
  has_many :recommendations
  
  INDUSTRY_OR_MARKETS = [:IT]
  
  # name or title
  # location
  # industry_or_market
end
