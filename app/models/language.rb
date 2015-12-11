class Language < ActiveRecord::Base
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
