class AddDefaultCategory < ActiveRecord::Migration[7.0]
  def change
    change_column :notatkas, :kategoria, :string, default: "New Category"
  end
end
