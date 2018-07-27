class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :conference_name
      t.date :coference_date
      t.string :author_fname
      t.string :author_mname
      t.string :author_lname
      t.string :degree
      t.string :links
      t.string :abstract
      t.string :short_paper
      t.string :full_paper

      t.timestamps
    end
  end
end
