json.extract! kursy, :id, :nazwa, :cena_w_zl, :created_at, :updated_at
json.url kursy_url(kursy, format: :json)