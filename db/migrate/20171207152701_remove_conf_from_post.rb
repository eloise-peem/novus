class RemoveConfFromPost < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :conference_name, :string
    remove_column :posts, :conference_date, :date
  end
end
