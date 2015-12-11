class Language < ActiveRecord::Base
  has_many :curriculum_vitaes

  LEVEL_OR_PROFICIENCIES = [:elementary, :limited_working, :professional_working, :full_professional, :native_or_bilingual]
  
  # name
  # code
  # proficiency (enum) OR it should be different model LanguageProficiency?
  # [
  #   "Elementary",
  #   "Limited working",
  #   "Professional working",
  #   "Full professional",
  #   "Native or bilingual"
  # ]
  # TODO: esli ja na rabote N ispolzoval estonskij 0 raz, a na rabote B x raz? Trebovalsja li raznqj level?
end
