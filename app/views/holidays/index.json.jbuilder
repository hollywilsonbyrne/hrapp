json.array!(@holidays) do |holiday|
  json.extract! holiday, :id, :dateTo, :dateFrom, :Department, :Employee
  json.url holiday_url(holiday, format: :json)
end
