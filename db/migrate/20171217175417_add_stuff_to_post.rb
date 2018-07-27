class AddStuffToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :title, :string
    add_column :posts, :author_fname, :string
    add_column :posts, :author_mname, :string
    add_column :posts, :author_lname, :string
    add_column :posts, :subtitle, :string
    add_column :posts, :url, :string
    add_column :posts, :institution, :string
    add_column :posts, :location, :string
    add_column :posts, :publisher, :string
    add_column :posts, :date_of_presentation, :date
    add_column :posts, :date_of_issue, :date
    add_column :posts, :volume, :string
    add_column :posts, :issue, :string
    add_column :posts, :page, :string
    add_column :posts, :year_of_publication, :string
    add_column :posts, :editor, :string
    add_column :posts, :producer, :string
    add_column :posts, :director, :string
    add_column :posts, :version_number, :string
    add_column :posts, :label, :string
  end
end
