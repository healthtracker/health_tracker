json.array!(@consumed_cals) do |consumed_cal|
  json.extract! consumed_cal, :id, :calories, :calories_on
  json.url consumed_cal_url(consumed_cal, format: :json)
end
