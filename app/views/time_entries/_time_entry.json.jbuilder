json.extract! time_entry, :id, :time_spent, :date, :summary, :created_at, :updated_at
json.url time_entry_url(time_entry, format: :json)