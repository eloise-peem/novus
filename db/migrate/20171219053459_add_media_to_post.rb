class AddMediaToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :media, :string
  end
end
