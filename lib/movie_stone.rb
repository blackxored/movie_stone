require "active_support/core_ext/hash"
require "pry"
require "faraday"
require "json"
require "erb"
require "uri"
require "mail"

require "movie_stone/version"
require "movie_stone/configurator"
require "movie_stone/mailer"
require "movie_stone/renderer"
require "movie_stone/movie"
require "movie_stone/providers/imdb"
require "movie_stone/retriever"
require 'movie_stone/output'

module MovieStone
  def self.config
    Configurator.instance.config
  end
end
