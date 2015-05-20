# Auto Localize

[![Build Status](https://travis-ci.org/caiosba/auto_localize.png)](https://travis-ci.org/caiosba/auto_localize) 
[![Gem Version](https://badge.fury.io/rb/auto_localize.png)](http://badge.fury.io/rb/auto_localize)


Machine-translates an application, by generating a `config/locales/<target-language>.yml` file from a `config/locales/<source-language>.yml` using Bing to translate strings from the source file automatically. Existing translations are not overwritten by default.

## Installation

Add the `auto_localize` gem to your Gemfile:

    gem "auto_localize"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install auto_localize

## Usage

After the gem is installed, you'll have a new rake task available. You need to pass the following arguments as environment variables:

* BING_ID: Bing id to be used (mandatory)
* BING_SECRET: Bing secret to be used (mandatory)
* TARGET_LANGUAGES: List of languages to which the source file should be translated, separated by commas (mandatory)
* SOURCE_LANGUAGE: Which source language to be used - assumes that a file at `config/locales/<source>.yml` exists (defaults to "en")
* FORCE: If true, existing translations are overwritten (defaults to `FALSE`)

Example:

`BING_ID=yourbingid BING_SECRET=yourbingsecret SOURCE_LANGUAGE=en TARGET_LANGUAGES=pt,es FORCE=true rake auto_localize`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
