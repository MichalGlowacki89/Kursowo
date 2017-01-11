class CreateKursies < ActiveRecord::Migration
  def change
    create_table :kursies do |t|
      t.string :nazwa
      t.integer :cena_w_zl

      t.timestamps
    end
  end
end
