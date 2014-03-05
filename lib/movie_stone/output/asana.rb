module MovieStone::Output
  class Asana < Mail

    private
    def initialize_fields
      super
      @to_addr   = MovieStone.config.asana[:project_addr]
      @from_addr = MovieStone.config.asana[:from_addr] || MovieStone.config.mail[:settings][:from_addr]
    end
  end
end
