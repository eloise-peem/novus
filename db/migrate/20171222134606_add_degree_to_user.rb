class AddDegreeToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :interest, :string
    add_column :users, :degree, :string
    add_column :users, :field, :string
  end
end
