require 'wisper/relay'
require 'wisper'

RSpec.describe Wisper::Relay do
  class MyRelay
    include Wisper::Relay

    def on_event(name, args)
    end
  end

  it 'this fails with seed 34135' do
    relay = MyRelay.new
    expect(relay).to receive(:foobar).with(1,2,3)
    Wisper.subscribe(relay)

    publisher = publisher_class.new
    publisher.broadcast(:foobar, 1,2,3)
  end
end
