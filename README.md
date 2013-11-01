# Rut Validation

Rut Validation provides a run/rut chilean validator for your model attributes or a single string.

[![Gem Version](https://badge.fury.io/rb/rut_validation.png)](http://badge.fury.io/rb/rut_validation)
[![Build Status](https://travis-ci.org/Phifo/rut_validation.png?branch=master)](https://travis-ci.org/Phifo/rut_validation)

## Installation

Add this line to your application's Gemfile:

    gem 'rut_validation'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rut_validation

## Usage

If you want to validate a model attribute you just need to set `rut: true` (like any model validation in Rails):

```ruby
class User < ActiveRecord::Base
  attr_accessible :rut

  validates :rut, rut: true
end
```

If you want to validate a single string:

    "16329351-K".rut_valid?
    => true
    "7654764-8".rut_valid?
    => false

If you want to use custom I18n translations you need to set the attribute validation in the model like:

```ruby
class User < ActiveRecord::Base
  attr_accessible :rut

  validates :rut, :rut => { :message => :rut_invalid }
end
```

And in your locales file (en.yml for example):

```yaml
en:
  activerecord:
    errors:
      models:
        user_custom_i18n:
          attributes:
            rut:
              rut_invalid: "Rut cannot be blank"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
