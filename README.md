# SpamEmail

If you have to reach out to your users with important information and they signed
up with a trash e-mail address you're not like to get the desired attention.This
gem checks the e-mail address domain against a blcklist of trash mail providers.

## Installation

Add this line to your application's Gemfile:

    gem 'spam_email'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install spam_email

## Usage

**Be advised that the validation checks NOT if a correct e-mail address is given.
Validation will pass with empty string/`nil` value! Checking the input with
`valid_email` or at least checking `presence: true` is strongly recommendend!**

``class User < ActiveRecord::Base
  validates :email, presence: true, spam_email: true
end
``

or specify a custom message with (the gem comes with en/de/fr locales):

`validates :email, presence: true, spam_email: { message: "is a blacklisted provider!" }`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Thanks

Thanks go to Chris Birner (cbhp@lima-city.de) for the (inital) blacklist and
to https://github.com/hallelujah/valid_email for inspiration.