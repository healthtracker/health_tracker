json.array!(@steps) do |step|
  json.extract! step, :id, :steps, :stepped_on
  json.url step_url(step, format: :json)
end
