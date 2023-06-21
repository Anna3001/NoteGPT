class AddColors < ActiveRecord::Migration[7.0]
  def change
    add_column :notatkas, :color, :string
  end
end
