json.extract! dailyreport, :id, :title, :report, :created_at, :updated_at
json.url dailyreport_url(dailyreport, format: :json)
