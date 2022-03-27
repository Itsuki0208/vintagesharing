# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create( email: 'test@test.com', password: 'itsuki0208' )

Admin.create( email: 'admin@admin.com', password: 'admin0111')

# Member.create( email: 'green@gmail.com', password: 'itsuki0208' )
# Member.create( email: 'greenday0208@gmail.com', password: 'itsuki0208' )
# Member.create( email: 'misaki@misaki.com', password: 'misaki0927' )
# Member.create( email: 'member@member.com', password: 'member0111' )
# Member.create( email: 'member2@member2.com', password: 'member2222' )

Genre.create(name: 'アウター')
Genre.create(name: 'トップス')
Genre.create(name: 'ボトムス')
Genre.create(name: '小物')
Genre.create(name: '靴')