class KursyZamowienie < ActiveRecord::Base
  validates :uzytkownik_id, :persence => true
  validates :kursy_id, :persence => true
  belongs_to :kursy
  belongs_to :zamowienie
end
