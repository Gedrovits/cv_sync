json.achievement do
  json.type :object
  json.properties do
    json.partial! 'model_properties', model: Achievement
  end
end

json.certification do
  json.type :object
  json.properties do
    json.partial! 'model_properties', model: Certification
  end
end

json.company do
  json.type :object
  json.properties do
    json.partial! 'model_properties', model: Company
  end
end

json.contact do
  json.type :object
  json.properties do
    json.partial! 'model_properties', model: Contact
  end
end

json.education do
  json.type :object
  json.properties do
    json.partial! 'model_properties', model: Education
  end
end

json.educational_institution do
  json.type :object
  json.properties do
    json.partial! 'model_properties', model: EducationalInstitution
    json.education_type do
      json.type :string
      json.enum EducationalInstitution::EDUCATION_TYPES
    end
  end
end

json.experience do
  json.type :object
  json.properties do
    json.company do
      json.partial! 'model_reference', model: Company
    end
    json.experience_type do
      json.type :string
      json.enum Experience::EXPERIENCE_TYPES
    end
    json.projects do
      json.type :array
      json.uniqueItems true
      json.items do
        json.partial! 'model_reference', model: Project
      end
    end
    json.skills do
      json.type :array
      json.uniqueItems true
      json.items do
        json.partial! 'model_reference', model: Skill
      end
    end
    json.languages do
      json.type :array
      json.uniqueItems true
      json.items do
        json.partial! 'model_reference', model: Language
      end
    end
  end
end

json.language do
  json.type :object
  json.properties do
    json.partial! 'model_properties', model: Language
  end
end

json.patent do
  json.type :object
  json.properties do
    json.partial! 'model_properties', model: Patent
  end
end

json.person do
  json.type :object
  json.properties do
    json.partial! 'model_properties', model: Person
  end
end

json.project do
  json.type :project
  json.properties do
    json.partial! 'model_properties', model: Project
  end
end

json.publication do
  json.type :object
  json.properties do
    json.partial! 'model_properties', model: Publication
  end
end

json.recommendation do
  json.type :object
  json.properties do
    json.partial! 'model_properties', model: Recommendation
  end
end

json.skill do
  json.type :object
  json.properties do
    json.partial! 'model_properties', model: Skill
  end
end

json.task do
  json.type :object
  json.properties do
    json.partial! 'model_properties', model: Task
  end
end

json.tool do
  json.type :object
  json.properties do
    json.partial! 'model_properties', model: Tool
  end
end
