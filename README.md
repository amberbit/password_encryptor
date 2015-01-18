# PasswordEncryptor

This is a simple class that wraps BCrypt usage pattern into single
method that does password encryption, verification, and takes makes it
use minimum cost when running in Rails test and development environments
(but it works without Rails too).

## Installation

Add this line to your application's Gemfile:

    gem 'password_encryptor'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install password_encryptor

## Usage

To encrypt and get String that you can store to `encrypted_password`
column in database, use:

    encrypted_password = PasswordEncryptor.encrypt('password')

To verify the password matches given String use:

    PasswordEncryptor.new(encrypted_password) == 'password'
    # => true

Password verification does not raise any errors when encrypted password
is invalid BCrypt hash, is empty or nil, just returns false in that
case. Returns false on invalid password, of course, too.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/password_encryptor/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

