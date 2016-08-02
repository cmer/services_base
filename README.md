# ServicesBase

ServicesBase is a very simple skeleton for implementing Service Objects and Micro-Services in Ruby.

It implements a Base module for your service objects (`Services::Base`) and two Response classes (`Services::Responses::Success` and `Services::Responses::Error`).

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
```ruby
class Services::MyService
  include Services::Base

  def call(id)
    # do something
    result_object = { foo: 'bar' }

    # and return success
    return Services::Responses::Success.new(result_object)

    # or if there's an error:
    return Services::Responses::Error.new(result_object, error_message: 'Something went wrong', error_code: 123)
  end
end
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

