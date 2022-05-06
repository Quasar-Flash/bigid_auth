# Publishing

After the Github and Rubygems authenticatication, push with the following command:

```sh
gem build bigid_auth.gemspec
rake release
gem push --key github --host https://rubygems.pkg.github.com/quasar-flash bigid_auth-0.2.1.gem
```

Don't forget to generate the release.
