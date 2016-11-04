# Gary Busey

This is a fake payment gateway.  You call set the fail/succeed rate to determine what you get.  At 50% you never know what you are gonna get
with Gary.

![Gary](https://static.independent.co.uk/s3fs-public/thumbnails/image/2014/09/12/22/Gary_Busey.jpg)


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gary_busey', github: 'dvictory/gary_payments'
```

And then execute:

    $ bundle

## Usage

```
gateway = GaryBusey::Gateway.new(percent_decline: 50)
gateway.sale(100, {track2: '4111-1111-1111-1111')
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dvictory/gary_payments.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

