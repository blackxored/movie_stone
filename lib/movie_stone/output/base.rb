class MovieStone::Output::Base
  attr_reader :movie, :rendered
  def initialize(movie, rendered)
    @movie    = movie
    @rendered = rendered
  end

  def output
    initialize_fields
    publish
  end
end
