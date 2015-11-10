namespace :db do

  desc "Clear the DB and fill with excellent sample data."

  task :populate => :environment do
    # Give it access to both populator and faker
    require 'populator'
    require 'faker'

    # Clear out every record inside these 3 tables
    [Genre, Artist, Song].each(&:destroy_all)

    # Add fake genres, artists, and songs
    Genre.populate 5 do |genre|
      genre.genre = Faker::Hacker.noun

      Artist.populate 5..10 do |artist|
        artist.name = Faker::Name.first_name
        artist.genre_id = genre.id

        Song.populate 5..10 do |song|
          song.title = Faker::Company.catch_phrase
          song.artist_id = artist.id
          song.year = rand(1960..2015)
        end # Song
      end # Artist
    end # Genre

    puts "BOOYA!  Done populating!"
  end # task

end