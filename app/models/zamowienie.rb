class Zamowienie < ActiveRecord::Base
  belongs_to :uzytkowniks
  has_many :kursy_zamowienies
end
