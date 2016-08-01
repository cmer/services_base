# ServicesBase

ServicesBase is a very simple Base module for implementing Service Objects and Micro-Services in Ruby.

It was heavily inspired by Chris Holtz's excellent article [Organize your app with service objects](http://chrisholtz.com/blog/organize-your-app-with-service-objects/). You should read it.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'services_base'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install services_base

## Usage

    class Services::MyService
      include ServicesBase

      def call(id)
        # do something
      end
    end


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

