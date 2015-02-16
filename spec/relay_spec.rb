require 'wisper/relay'
require 'wisper'

RSpec.describe 'Wisper::Relay' do

  let(:relay)     { relay_class.new }
  let(:publisher) { publisher_class.new }

  before { Wisper.subscribe(relay) }

  describe '#on_event' do
    it 'raise an error' do
      expect { relay.on_event(:an_event, []) }.to raise_error(NotImplementedError)
    end
  end
end
