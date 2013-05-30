class Book < ActiveRecord::Base
  attr_accessible :authors, :average_rating, :description, :image_link, :info_link, :isbn, :isbn_10, :isbn_13, :language, :page_count, :preview_link, :print_type, :published_date, :publisher, :title
end
