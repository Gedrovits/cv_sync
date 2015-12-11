model.columns_hash.map{ |n| [n.first, n.second.type] }.each do |name, type|
  json.set! name do
    json.type ([:datetime, :date].include?(type.to_sym) ? :string : type.to_sym)
  end
end
