# Dljbz

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'dljbz'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dljbz

## Usage

create rails file: config/initializers/dljbz.rb
```
  Dljbz.api_key = 'api_key' # from: http://dlj.bz/dashboard/api_key
```

```
  url = Dljbz::V2::Short.request('http://www.sina.com.cn')
  => {"short"=>"http://dlj.bz/H0Jo6e", "url"=>"http://www.sina.com.cn"}
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/dljbz/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
