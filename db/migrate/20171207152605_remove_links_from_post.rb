class RemoveLinksFromPost < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :links, :string
  end
end
