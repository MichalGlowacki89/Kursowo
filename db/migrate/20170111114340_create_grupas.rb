class CreateGrupas < ActiveRecord::Migration
  def change
    create_table :grupas do |t|
      t.integer :kurs_id
      t.integer :uzytkownik_id

      t.timestamps
    end
  end
end
