class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :authors
      t.string :publisher
      t.date :published_date
      t.string :description
      t.string :isbn
      t.string :isbn_10
      t.string :isbn_13
      t.integer :page_count
      t.string :print_type
      t.integer :average_rating
      t.string :language
      t.string :preview_link
      t.string :info_link
      t.string :image_link

      t.timestamps
    end
  end
end
