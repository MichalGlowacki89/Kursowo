class Zamowienie < ActiveRecord::Base
  validates :uzytkownik_id, :persence => true
  validates :wartosc_w_zl, :persence => true
  belongs_to :uzytkowniks
  has_many :kursy_zamowienies
end
