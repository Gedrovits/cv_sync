json.type :array
json.uniqueItems true
json.items do
  json.set! :$ref, "#/definitions/#{model.to_s}"
end
