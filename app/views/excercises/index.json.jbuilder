json.array!(@excercises) do |excercise|
  json.extract! excercise, :id, :description, :calories_burned, :excercise_type_id, :date
  json.url excercise_url(excercise, format: :json)
end
