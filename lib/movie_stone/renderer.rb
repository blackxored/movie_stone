module MovieStone
  class Renderer
    def initialize(template_name)
      @template_file = File.expand_path("../templates/#{template_name}.erb", __FILE__)
      raise ArgumentError, "Template is invalid" unless File.exist? @template_file
    end

    def render(movie)
      Tilt.new(@template_file).render(self, movie: movie)
    end
  end
end
