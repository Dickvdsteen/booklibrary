# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.create

Book.create

Book.create

Book.create
Book.create
Book.create
Book.create
Book.create
Book.create

@books = Book.all
@books.each do |book|
	book.image_link = "http://books.google.com/books?id=gfg13CM_kU8C&pg=PP1&img=1&zoom=5&sig=LsTwGVAsy_qWYMPM6HVDTPAMokg"
	book.save
end