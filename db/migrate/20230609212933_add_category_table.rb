class AddCategoryTable < ActiveRecord::Migration[7.0]
  def change
    create_table :kategorie do |t|
      t.string :tytul
      t.string :opis

      t.timestamps
    end
  end
end
