class Kursy < ActiveRecord::Base
  validates :nazwa, :persence => true
  validates :cena_w_zl, :persence => true
  belongs_to :kursies
  has_many :kursy_zamowienies
end
