require ('pry-byebug')
require ('pg')
require_relative('../models/artist')
require_relative('../models/album')

# Album.delete_all

artist1 = Artist.new( {'name' => 'Oasis'})
artist1.add

album1 = Album.new( 
  {
    'title' => 'definetly maybe',
    'genre' => 'brit-pop',
    'artist_id' => artist1.id
    })
album1.add

# customers = Customer.all

# p Artist.all
# p Album.all

p album1.artist