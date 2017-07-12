require('pg')
require_relative('../db/sql_runner')

class Album

  attr_accessor :title
  attr_reader :id, :genre

  def initialize(options)
    @artist_id = options['artist_id'].to_i
    @title = options['title']
    @genre = options['genre']
    @id = options['id'].to_i if options['id']
  end 

  def add
    sql = "INSERT INTO albums (title, genre, artist_id) VALUES ('#{@title}', '#{@genre}', '#{@artist_id}') RETURNING id;"
    @id = SqlRunner.run(sql)[0]['id'].to_i

  end 

end 