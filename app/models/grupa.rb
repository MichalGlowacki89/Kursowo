class Grupa < ActiveRecord::Base
  has_many :uzytkowniks
  belongs_to :kursies
end
