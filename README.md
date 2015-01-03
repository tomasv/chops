# Chops

[![Code Climate](https://codeclimate.com/github/tomasv/chops/badges/gpa.svg)](https://codeclimate.com/github/tomasv/chops)

Chops provides you with a view context in Rails in any of your objects.
All you need to do is include `Chops::ViewHelpers`.

## Is it stable?

Nope. I hacked this together as a proof of concept in 30 minutes.

## Installation

Add this line to your application's Gemfile:

    gem 'chops'

And then execute:

    $ bundle

## Usage

Just include `Chops::ViewHelpers` where you need the context:

```ruby
class Tweet
  include Chops::ViewHelpers

  def initialize(text, user)
    @text = text
    @user = user
  end

  # helpers are available through #helpers (or #h for short)
  def to_s
    "Check out my profile in this super app! #{h.user_url @user}"
  end
end
```

## Credit

This is esentially Draper but without any delegation stuff, so
some of the code is heavily inspired by (copied from) it.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
