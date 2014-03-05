class MovieStone::Output::Mail < MovieStone::Output::Base
  attr_reader :from_addr, :to_addr, :body, :subject

  private
  def initialize_fields
    @subject = @movie.title
    if @movie.rating.present? && @movie.rating != "N/A"
      @subject += " [#{@movie.rating}]"
    end
    @body    = rendered
  end

  def publish
    MovieStone::Mailer.new.deliver(from_addr, to_addr, body, subject)
  end
end
