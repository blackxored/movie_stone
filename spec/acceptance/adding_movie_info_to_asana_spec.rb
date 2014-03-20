require 'spec_helper'

describe "Adding movie info to Asana" do
  let(:avengers) { MovieStone::Retriever.new(title: "The Avengers") }

  before do
    VCR.insert_cassette('fetch_movie_avengers')
    @movie = avengers.retrieve
  end

  after { VCR.eject_cassette('fetch_movie_avengers') }

  it "fetches the movie information" do
    expect(@movie.title).to eq("The Avengers")
    expect(@movie.rating).to eq(8.2)
    expect(@movie.year).to eq(2012)
  end

  it "renders an Asana compatible template" do
      rendered = avengers.rendered
      expect(rendered).to match(/Released: 2012/)
      expect(rendered).to match(/Genre: Action, Fantasy/)
      expect(rendered).to match(/Starring: Robert Downey Jr/)
      expect(rendered).to match(%r{http://www.imdb.com/title/tt0848228})
      expect(rendered).to match("team of superheroes to save the planet from Loki")
  end

  it "adds the task to Asana via email" do
    SIMPLE_EMAIL_REGEX = /(.+)@(.+)\.(.+)/
    mock.instance_of(MovieStone::Mailer).deliver(
      anything,
      %r{@mail.asana.com$},
      avengers.rendered,
      "The Avengers [8.2]"
    )
    avengers.publish_to(:asana)
  end
end
