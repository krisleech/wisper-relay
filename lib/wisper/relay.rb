require "wisper/relay/version"

module Wisper
  module Relay
    def respond_to?(name, include_private = false)
      puts name
      true
    end

    def method_missing(name, *args)
      if relay?(name, args)
        on_event(name, args)
      else
        # noop
      end
    end

    def on_event(event, args)
      raise NotImplementedError
    end

    private

    def relay?(event, args)
      true
    end
  end
end
