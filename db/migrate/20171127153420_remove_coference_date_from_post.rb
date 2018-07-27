class RemoveCoferenceDateFromPost < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :coference_date, :date
  end
end
