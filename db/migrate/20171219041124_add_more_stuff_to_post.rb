class AddMoreStuffToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :privacy, :boolean
    add_column :posts, :abstract, :string
    add_column :posts, :short_paper, :string
    add_column :posts, :full_paper, :string
  end
end
