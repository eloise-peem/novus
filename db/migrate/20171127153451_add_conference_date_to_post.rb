class AddConferenceDateToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :conference_date, :date
  end
end
