class AddAuthorToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :author_fname, :string
    add_column :posts, :author_mname, :string
    add_column :posts, :author_lname, :string
    add_column :posts, :degree, :string
  end
end
