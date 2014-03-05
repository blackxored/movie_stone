module MovieStone
  module Providers
    class Imdb
      def self.fetch(options)
        if options[:id]
          params = "i=#{options[:id]}"
        else
          params = "i=&t=#{URI.encode(options[:title])}"
        end

        JSON.parse(Faraday.get("http://www.omdbapi.com?#{params}").body)
      end
    end
  end
end
