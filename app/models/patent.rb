class Patent < ActiveRecord::Base
  has_many :curriculum_vitaes
  has_many :people
  
  # patent office (country) OR can be 'authority' OR country can be own field
  # status (pattent issued / patent pending)
  # patent / application number OR license (?)
  # patent title (name)
  # inventor(s), people can be multiple
  # issue / filling date
  # patent url
  # description
end
