class Kursy < ActiveRecord::Base
  belongs_to :kursies
  has_many :kursy_zamowienies
end
