class RemoveAuthorFromPosts < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :author_fname, :string
    remove_column :posts, :author_mname, :string
    remove_column :posts, :author_lname, :string
    remove_column :posts, :degree, :string
  end
end
