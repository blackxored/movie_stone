module MovieStone
  class Retriever
    attr_reader :movie, :rendered

    def initialize(options)
      @options = options
    end

    def retrieve
      response = Providers::Imdb.fetch(@options)
      @movie = MovieStone::Movie.new(
        response.extract!(*MovieStone::Movie.translations.map(&:to_s))
      )
      @rendered = render(@movie)
      @movie
    end

    def render(movie)
      MovieStone::Renderer.new(:simple).render(movie)
    end

    def publish_to(output)
      klazz  = "::MovieStone::Output::#{output.to_s.classify}".safe_constantize
      if klazz
        klazz.send(:new, movie, rendered).output
      end
    end
  end
end
