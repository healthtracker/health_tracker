json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :description, :calories_burned, :exercise_type_id, :date
  json.url exercise_url(exercise, format: :json)
end
