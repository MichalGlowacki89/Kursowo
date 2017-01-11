class CreateZamowienies < ActiveRecord::Migration
  def change
    create_table :zamowienies do |t|
      t.string :uzytkownik_id
      t.integer :wartosc_w_zl

      t.timestamps
    end
  end
end
