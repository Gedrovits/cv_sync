class Experience < ActiveRecord::Base
  has_many :curriculum_vitaes
  belongs_to :company
  has_many :projects
  has_many :skills
  has_many :languages
  
  EXPERIENCE_TYPES = [:employee, :founder, :advisor, :attorney, :board_member]
  
  # company / organization
  # occupation
  # description
  # start_date
  # end_date
  # ongoing_or_in_progress
  # experience_type
    # "employee",
    #   "founder",
    #   "advisor",
    #   "attorney",
    #   "board_member"
    # ]
  # projects []
  # skills []
  # languages []
end
