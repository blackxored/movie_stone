require 'yaml'
module MovieStone
  class Configurator
    include Singleton
    def config
      @config ||= load_config
    end

    def load_config
      @config_file = File.join(ENV['HOME'], '.movie_stone.rc.yml')
      if File.exist?(@config_file)
        @config = YAML.load_file(@config_file)
      else
        @config = File.expand_path('../examples/movie_stone.rc.yml', __FILE__)
        write_config(@config)
      end

      @config = Class.new(Hash) do
        include Hashie::Extensions::IndifferentAccess
        include Hashie::Extensions::DeepMerge
        include Hashie::Extensions::MethodAccess
      end.new.deep_merge(@config)
    end

    def write_config(config)
      File.open(@config_file, 'w') do |f|
        f.write(YAML.dump(config))
      end
    end
  end
end
