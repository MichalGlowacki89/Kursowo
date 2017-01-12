class Grupa < ActiveRecord::Base
  validates :kurs_id, :persence => true
  validates :uzytkownik_id, :persence => true
  has_many :uzytkowniks
  belongs_to :kursie
end
