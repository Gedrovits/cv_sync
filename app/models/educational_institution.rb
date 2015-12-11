class EducationalInstitution < ActiveRecord::Base
  has_many :educations
  
  EDUCATION_TYPES = [:school, :university, :other]
  
  # school / institution / name_or_title
  # Location
  # education type (school/university/other)
  # description
end
