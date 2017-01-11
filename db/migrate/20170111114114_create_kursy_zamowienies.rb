class CreateKursyZamowienies < ActiveRecord::Migration
  def change
    create_table :kursy_zamowienies do |t|
      t.integer :zamowienie_id
      t.integer :kursy_id

      t.timestamps
    end
  end
end
