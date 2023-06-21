class AddUserRefToNotatkas < ActiveRecord::Migration[7.0]
  def change
    add_reference :notatkas, :user, foreign_key: true
  end
end
