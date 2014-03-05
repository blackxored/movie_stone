require 'hashie'
require 'hashie/trash'

module MovieStone
  class Movie < Hashie::Trash
    property :title,        from: :Title
    property :rating,       from: :imdbRating
    property :release_date, from: :Release
    property :year,         from: :Year
    property :genre,        from: :Genre
    property :actors,       from: :Actors
    property :summary,      from: :Plot

    property :imdb_url, from: :imdbID, with: ->(i) { "http://www.imdb.com/title/#{i}" }
  end
end
