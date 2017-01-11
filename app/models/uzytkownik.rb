class Uzytkownik < ActiveRecord::Base
 
  EMAIL_REGEX = /\A[a-z0-0._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
  
  validates :imie, :presence => true
  validates :nazwisko, :presence => true
  validates :login, :length => {:within =>3..20, :messege => "login musi być dluzszy niz 3 znaki i krotszy niz 20 znakow"}, :uniqueness => true
  validates :email, :presence => true, :length => {:maximum => 100}, :format => EMAIL_REGEX, :confirmation => true
  has_many :zamowienies
  has_many :grupas
end
