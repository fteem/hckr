# Hckr

Hckr is a gem that allows browsing Hackernews via CLI.

## Installation

Add this line to your application's Gemfile:

    gem 'hckr'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hckr

## Usage

### Via CLI
```hckr```
#### Options:
* ```home```, ```-h``` or ```--home``` returns links from the Show HN page
* ```show```, ```-s``` or ```--show``` returns links from the Show HN page
* ```jobs```, ```-j``` or ```--jobs``` returns links from the jobs section
* ```newest```, ```-n``` or ```--newest``` returns links from the newest section
* ```best```, ```-b``` or ```--best``` returns links from the best section
* ```help``` or ```--help``` sends help

When ran without any arguments, returns links from the home page.

### Return JSON
You can call the ```Hckr::JsonBuilder``` like:

```ruby
Hckr::JsonBuilder.new(page: :jobs).build!
```

which will return a JSON of the jobs HN page.


## Contributing

1. Fork it ( http://github.com/<my-github-username>/hckr/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
