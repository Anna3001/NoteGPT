class CreateNotatkas < ActiveRecord::Migration[7.0]
  def change
    create_table :notatki do |t|
      t.string :tytul
      t.string :tekst
      t.string :kategoria

      t.timestamps
    end
  end
end
