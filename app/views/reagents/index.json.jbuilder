json.array!(@reagents) do |reagent|
  json.extract! reagent, :id, :name, :formula, :quantity
  json.url reagent_url(reagent, format: :json)
end
