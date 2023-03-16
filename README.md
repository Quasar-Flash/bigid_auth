BigId Auth's Library for Ruby
==============

[![Gem Version](https://badge.fury.io/rb/bigid_auth.svg)](https://badge.fury.io/rb/bigid_auth)
[![bigid_auth](https://github.com/Quasar-Flash/bigid_auth/actions/workflows/build.yml/badge.svg)](https://github.com/Quasar-Flash/bigid_auth/actions/workflows/build.yml)
[![CodeQL](https://github.com/Quasar-Flash/bigid_auth/actions/workflows/codeql.yml/badge.svg)](https://github.com/Quasar-Flash/bigid_auth/actions/workflows/codeql.yml)

Dev Requirements
-----------------

- Ruby: Higher version
- Bundler

Global Installation
-----------------

```ruby
gem install bigid_auth
```

Installation for Rails
-----------------

```ruby
# Add to the Gemfile
gem "bigid_auth", "~> 1.0.0"
```

Installation using the Github Gem repo
-----------------

```ruby
source "https://rubygems.pkg.github.com/quasar-flash" do
  gem "bigid_auth", "1.0.0"
end
```

Setting the BigID credentials - Rails Project
-----------------

Create the config/initializers/bigid.rb file and define:

```ruby
# Set the env variables
Bigid.configure do |config|
  config.username = "email@example.com"
  config.password = "xxxxxxxxx"
end
```

Applying an authentication
-----------------

```ruby
require "bigid_auth"

Bigid::Auth::Authentication.new.login
```

Result Example
-----------------

```ruby
<Flash::Integration::Response:xxxx
  @request=<Flash::Integration::Request:xxx
    @method = :post,
    @url = "https://accesstoken.bigdatacorp.com.br/Generate",
    @params = {},
    @headers = {
      :"Content-Type" => "application/json",
      :Accept => "application/json"
    },
    @body = "{\"login\":\"email@email.com\",\"password\":\"xxxxxx\",\"expires\":60000}",
    @time = 2021-07-21 22:49:57.869382432 UTC>,
  @status = 200,
  @headers = {
    "content-type" => "application/json",
    "content-length" => "361",
    "connection" => "keep-alive",
    "date" => "Wed, 21 Jul 2021 22:49:58 GMT"
  },
  @body="{\"expiration\":\"Thu, 25 May 2028 22:49:58 GMT\",\"message\":\"Token Generated\",\"success\":true,\"token\":\"xxx\",\"tokenID\":\"xxx\"}\n",
  @time=2021-07-21 22:49:58.248277077 UTC>

```

Problems?
-----------------

**Please do not directly email any committers with questions or problems.**  A
community is best served when discussions are held in public.

Searching the [issues](https://github.com/Quasar-Flash/bigid_auth/issues)
for your problem is also a good idea.

Contributing
-----------------

- Check out the latest master to make sure the feature hasn't been implemented
or the bug hasn't been fixed yet;
- Check out the issue tracker to make sure someone already hasn't requested it
and/or contributed it;
- Fork the project;
- Start a feature/bugfix branch;
- Commit and push until you are happy with your contribution;
- Make sure to add tests for it. This is important so I don't break it in a
future version unintentionally.;
- Please try not to mess with the Rakefile, version, or history. If you want to
have your own version, or is otherwise necessary, that is fine, but please
isolate to its own commit so I can cherry-pick around it.

License
-----------------

Please see [LICENSE](https://github.com/Quasar-Flash/bigid_auth/blob/master/LICENSE.txt)
for licensing details.

Authors
-----------------

Danilo Carolino, [@danilogco](https://github.com/danilogco) / [@Quasar-Flash](https://github.com/Quasar-Flash)
