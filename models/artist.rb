require ('pg')
require_relative('../db/sql_runner')

class Artist

    attr_accessor :name
    attr_reader :id

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
  end 

  def add
    sql = "INSERT INTO artists (name) VALUES ('#{@name}') RETURNING id;"
    @id = SqlRunner.run(sql)[0]['id'].to_i

  end 

  def self.all
    sql = "SELECT * FROM artists;"
    artists = SqlRunner.run(sql)
    return artists.map { |artist| Artist.new(artist)}
  end 

  def album
  sql = "SELECT * FROM albums WHERE artist_id = #{@id}"
  album = SqlRunner.run(sql)
  return Album.new(album[0])
  end

  def edit
  sql = "UPDATE artists SET name = '#{@name}' WHERE id = #{@id};"
  SqlRunner.run(sql)
  end

end 