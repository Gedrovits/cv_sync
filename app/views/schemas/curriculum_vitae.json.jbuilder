json.set! :$schema, "http://json-schema.org/draft-04/schema#"
# json.id schemas_curriculum_vitae_url(format: :json)

json.title 'Curriculum Vitae'
json.type :object

json.definitions do
  json.partial! 'schema_definitions'
end

json.properties do
  json.partial! 'model_properties', model: CurriculumVitae
  CurriculumVitae.reflections.keys.map{ |n| [n, n.singularize] }.each do |rel|
    json.set! rel[0].to_sym do
      json.partial! 'model_references', model: rel[1]
    end
  end
end

json.required do
end
