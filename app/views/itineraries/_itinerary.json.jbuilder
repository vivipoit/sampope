json.extract! itinerary, :id, :subtotal, :discount, :total, :created_at, :updated_at
json.url itinerary_url(itinerary, format: :json)
