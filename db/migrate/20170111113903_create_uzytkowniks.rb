class CreateUzytkowniks < ActiveRecord::Migration
  def change
    create_table :uzytkowniks do |t|
      t.string :imie
      t.string :nazwisko
      t.string :login
      t.string :password_digest
      t.string :email

      t.timestamps
    end
  end
end
