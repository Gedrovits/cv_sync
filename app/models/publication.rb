class Publication < ActiveRecord::Base
  has_many :curriculum_vitaes
  has_many :people
  
  # Do you have any published articles, studies, conference presentations, or other work?
  # Publications are a great way to show off your professional accomplishments.
  # name or title
  # publication / publisher
  # publication date
  # publication URL
  # author(s)
  # description
end
