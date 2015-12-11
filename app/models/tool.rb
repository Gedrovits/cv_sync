class Tool < ActiveRecord::Base
  has_many :curriculum_vitaes
  has_many :skills
  
  LEVEL_OR_PROFICIENCIES = [:elementary, :limited_working, :professional_working, :full_professional]
  
  # name or title
  # category (enum)
  # level_or_experience (enum)
  
  # This is RubyMine is a TOOL for Ruby SKILL
end
