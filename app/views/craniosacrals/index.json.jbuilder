json.array!(@craniosacrals) do |craniosacral|
  json.extract! craniosacral, :id
  json.url craniosacral_url(craniosacral, format: :json)
end
