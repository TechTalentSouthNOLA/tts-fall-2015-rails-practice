# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Genre.create(genre: 'pop')
Genre.create(genre: 'rock')
Genre.create(genre: 'classic rock')
Genre.create(genre: 'soul')
Genre.create(genre: 'rap')
Genre.create(genre: 'country')
Genre.create(genre: 'blues')

Artist.create(name: 'Michael Jackson', genre_id: 1)
Artist.create(name: 'Madonna', genre_id: 1)