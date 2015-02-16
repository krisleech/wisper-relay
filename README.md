# Wisper::Relay [WIP]

Relay wisper events to the outside world, for example to a Message Queue.

## Installation

```ruby
gem 'wisper-relay'
```

## Usage

```ruby
class MyRelay
  include Wisper::Relay

  def on_event(event, args)
    # ...
  end
end

Wisper.subscribe(MyRelay.new)
```

Since an instance of `MyRelay` has been globally subscribed  `on_event` will
get invoked for every event broadcast.

## Contributing

Yes, please.
