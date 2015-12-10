json.set! :$schema, "http://json-schema.org/draft-04/schema#"

json.id schemas_curriculum_vitae_url(format: :json)

json.definitions do
  json.company do
    json.type :object
    json.properties do
      json.name_or_title do
        json.type :string
      end
      json.location do
        json.type :string
      end
      json.industry_or_market do
        json.type :string
      end
    end
    json.required [:name_or_title]
  end
  
  json.institution do
    json.type :object
    json.properties do
      json.name_or_title do
        json.type :string
      end
      json.location do
        json.type :string
      end
      json.education_type do
        json.type :string
        json.enum [:school, :university, :other]
      end
    end
    json.required [:name_or_title]
  end
  
  json.experience do
    json.type :object
    json.properties do
      json.company do
        json.set! :$ref, '#/definitions/company'
      end
      json.occupation do
        json.type :string
      end
      json.description do
        json.type :string
      end
      json.start_date do
        json.type :string
      end
      json.end_date do
        json.type :string
      end
      json.ongoing_or_in_progress do
        json.type :boolean
        json.default true
      end
      json.experience_type do
        json.type :string
        json.enum [:employee, :founder, :advisor, :attorney, :board_member]
      end
      json.projects do
        json.type :array
        json.uniqueItems true
        json.items do
          json.set! :$ref, '#/definitions/project'
        end
      end
      json.skills do
        json.type :array
        json.uniqueItems true
        json.items do
          json.set! :$ref, '#/definitions/skill'
        end
      end
      json.languages do
        json.type :array
        json.uniqueItems true
        json.items do
          json.set! :$ref, '#/definitions/language'
        end
      end
    end
    json.required [:company, :occupation, :start_date, :experience_type]
  end
  
  
end
