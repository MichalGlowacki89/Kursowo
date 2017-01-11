class KursyZamowienie < ActiveRecord::Base
  belongs_to :kursies
  belongs_to :zamowienies
end
