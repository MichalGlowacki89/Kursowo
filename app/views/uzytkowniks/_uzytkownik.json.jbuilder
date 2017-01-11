json.extract! uzytkownik, :id, :imie, :nazwisko, :login, :password_digest, :email, :created_at, :updated_at
json.url uzytkownik_url(uzytkownik, format: :json)