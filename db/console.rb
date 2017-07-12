require ('pry-byebug')
require ('pg')
require_relative('../models/artist')
require_relative('../models/album')

Album.delete_all
Artist.delete_all

artist1 = Artist.new( {'name' => 'Oasis'})
artist1.add
artist2 = Artist.new( {'name' =>'Pulp'})
artist2.add

album1 = Album.new( 
  {
    'title' => 'Definetly Maybe',
    'genre' => 'brit-pop',
    'artist_id' => artist1.id
    })
album2 = Album.new(
  { 
    'title' => 'Whats the Story Morning Glory',
    'genre' => 'brit-pop',
    'artist_id' => artist1.id
  })
album3 = Album.new(
  { 
    'title' => 'Different Class',
    'genre' => 'brit-pop',
    'artist_id' => artist2.id
  })
album1.add
album2.add
album3.add

