BigId Auth's Library for Ruby
==============

[![Gem Version](https://badge.fury.io/rb/bigid_auth.svg)](https://badge.fury.io/rb/bigid_auth)
[![Build Status](https://travis-ci.com/Quasar-Flash/bigid-auth-ruby.svg?branch=master)](https://travis-ci.com/Quasar-Flash/bigid-auth-ruby)
[![bigid_auth](https://github.com/Quasar-Flash/bigid-auth-ruby/actions/workflows/ruby.yml/badge.svg)](https://github.com/Quasar-Flash/bigid-auth-ruby/actions/workflows/ruby.yml)

Dev Requirements
-----------------

- Ruby: Any version
- Bundler

Global Installation
-----------------

    gem install bigid_auth

Installation for Rails
-----------------

    # Add to the Gemfile
    gem 'bigid_auth', '~> 0.1.0'

Setting the BigID credentials
-----------------

    # Set the env variables
    ENV['BIGID_USERNAME'] = 'your_username'
    ENV['BIGID_PASSWORD'] = 'your_password'

Setting the BigID credentials - Rails Project
-----------------

Create the config/initializers/bigid.rb file and define:

    # Set the env variables
    Bigid.configure do |config|
        config.username = 'your_username'
        config.password = 'your_password'
    end

Applying an authentication
-----------------

    require 'bigid_auth'

    auth = Bigid::Auth::Authentication.new
    auth.login

Result Example
-----------------

    #<Bigid::Auth::Integration::Response:0x0000564181d2bef0
        @request=#<Bigid::Auth::Integration::Request:0x0000564181d76a18
            @method=:post,
            @url="https://accesstoken.bigdatacorp.com.br/Generate",
            @params={},
            @headers={:"Content-Type"=>"application/json", :Accept=>"application/json"},
            @body="{\"login\":\"username\",\"password\":\"crtvreru\",\"expires\":60000}",
            @time=2021-04-18 18:55:24.678349974 UTC>,
            @status=200,
            @body="{\"expiration\":\"Mon, 21 Feb 2028 18:55:24 GMT\",\"message\":\"Token Generated\",\"success\":true,\"token\":\"xxxxxxxxxxxx\",\"tokenID\":\"0000000000\"}\n", @time=2021-04-18 18:55:24.995163484 UTC>

Problems?
-----------------

**Please do not directly email any committers with questions or problems.**  A community is best served when discussions are held in public.

Searching the [issues](https://github.com/Quasar-Flash/bigid-auth-ruby/issues) for your problem is also a good idea.

Contributing
-----------------

- Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet;
- Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it;
- Fork the project;
- Start a feature/bugfix branch;
- Commit and push until you are happy with your contribution;
- Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.;
- Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

License
-----------------

Please see [LICENSE](https://github.com/Quasar-Flash/bigid-auth-ruby/blob/master/LICENSE.txt) for licensing details.

Authors
-----------------

Danilo Carolino, [@danilogco](https://github.com/danilogco) / [@Quasar-Flash](https://github.com/Quasar-Flash)
