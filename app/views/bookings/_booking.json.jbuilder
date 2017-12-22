json.extract! booking, :id, :name, :booking_for, :date, :time, :phone, :created_at, :updated_at
json.url booking_url(booking, format: :json)
