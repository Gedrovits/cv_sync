class Certification < ActiveRecord::Base
  has_many :curriculum_vitaes
  
  # name or title
  # authority
  # license
  # url
  # start_date
  # end_date
  # is_this_cert_expires?
end
