# Mrml::Rails

`mrml-rails` is a ActionMailer templating engine that uses the Rust-based MRML compiler in order to compile MJML files into pure HTML.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mrml-rails'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install mrml-rails

## Usage

All you need to do is to have the file extension `mjml` on the specific views.

I.e.: `sign_up.mjml`, `notification.mjml`

## Development

1. Setup the tools with: `asdf install` (make sure you have the Ruby and Rust asdf plugins installed)
2. Run `bundle install`
3. For rspec run: `bundle exec rspec`

## Heroku Rust Setup

1. Add the rust buildpack to the app (and app.json): `https://buildpack-registry.s3.amazonaws.com/buildpacks/emk/rust.tgz`
2. Add a RustConfig with:

```
VERSION=1.65.0
RUST_SKIP_BUILD=1
```

3. Deploy

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/oddcamp/mrml-rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/oddcamp/mrml-rails/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Mrml::Rails project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/oddcamp/mrml-rails/blob/master/CODE_OF_CONDUCT.md).
