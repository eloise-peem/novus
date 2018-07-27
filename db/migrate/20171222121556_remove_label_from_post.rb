class RemoveLabelFromPost < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :label, :string
  end
end
