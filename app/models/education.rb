class Education < ActiveRecord::Base
  has_many :curriculum_vitaes
  has_one :educational_institution
  
  STATUSES = [:ongoing_or_in_progress, :finished, :left_or_kicked_out]
  
  # education_institution
  # degree_or_qualification
  # field_of_study (?)
  # gpa (?)
  # grade (?)
  # description
  # start_date
  # end_date
  # Activities and Societies (?) bullshit?
  # status (enum) -> [
  # "ongoing_or_in_progress",
  #   "finished",
  #   "left_or_kicked_out"
  # ]
end
