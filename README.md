# Easing

A port of known [Robert Penner's easing
functions](http://www.robertpenner.com/easing/) for Ruby, implemented both in
pure-Ruby and with FFI.

Check out [easings.net](http://easings.net/) to help you easily visualize each
of the easing functions.

## Usage

All functions are defined in the Easing module, and the same 4 parameters:

  * `t`: current time
  * `b`: beginning or start value
  * `c`: change in value (or *destination* - `b`)
  * `d`: duration

```ruby
(0..10).map { |t| Easing.ease_in_out_expo(t, 0, 10, 10) }
# => [0.0, 0.01953125, 0.078125, 0.3125, 1.2500000000000002, 5.0, 8.75, 9.6875, 9.921875, 9.98046875, 10.0]
```

## Installation

Add this line to your application's Gemfile:

    gem 'easing'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install easing

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
