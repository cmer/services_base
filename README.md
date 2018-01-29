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

response = Services::MyService.call(123)
response.is_a?(Services::Responses::Success)  # true when it's a success
response.is_a?(Services::Responses::Error)    # true when it's an error
response.is_a?(Services::Responses::Base)     # always true

response.success?       # true/false
response.result         # the resulting object
response.error_code     # available when there's an error
response.error_message  # available when there's an error
```

## Configuration

When running a service asynchronously (ie: in Sidekiq or Delayed Job), it may be desirable to raise an exception instead of returning a `Services::Responses::Error` in order to retry the job at a later time. It is easy to do so:

```ruby
Services::Responses.configure do |config|
  config.raise_exception_on_async_error = true
end
```

When `raise_exception_on_async_error` is set to `true`, an exception will be thrown whenever a new 
`Services::Responses::Error` is initialized during an asynchronous job.

Alternatively, you can raise an exception only for a specific `Error` object:

```ruby
# will raise an exception ONLY if it's called from an async job.
Services::Responses::Error.new(my_exception, raise_exception_on_async_error: true)
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

