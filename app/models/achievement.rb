class Achievement < ActiveRecord::Base
  has_many :curriculum_vitaes
  
  # title
  # occupation (where achieved)
  # issuer (who gave) OR proof_of_concept
  # date
  # description
end
