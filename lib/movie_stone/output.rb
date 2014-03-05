module MovieStone
  module Output
    autoload :Base,  "movie_stone/output/base"
    autoload :Mail,  "movie_stone/output/mail"
    autoload :Asana, "movie_stone/output/asana"
  end
end
