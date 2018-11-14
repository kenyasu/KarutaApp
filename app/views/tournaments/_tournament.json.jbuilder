json.extract! tournament, :id, :name, :host, :date, :place, :class, :entryFee, :applicationPeriod, :capacity, :access, :created_at, :updated_at
json.url tournament_url(tournament, format: :json)
