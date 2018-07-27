class AddKindToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :paper_type, :integer
  end
end
