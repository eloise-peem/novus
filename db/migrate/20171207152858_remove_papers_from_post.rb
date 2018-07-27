class RemovePapersFromPost < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :abstract, :string
    remove_column :posts, :short_paper, :string
    remove_column :posts, :full_paper, :string
  end
end
