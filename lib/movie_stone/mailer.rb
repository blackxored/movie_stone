module MovieStone
  class Mailer
    def initialize
      Mail.defaults do
        delivery_method :smtp, MovieStone.config.mail[:delivery].symbolize_keys
      end
    end

    def deliver(from_addr, to_addr, mail_body, mail_subject)
      Mail.deliver do
        to to_addr
        from from_addr
        subject mail_subject
        body mail_body
      end
    end
  end
end
