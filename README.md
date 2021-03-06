# Rdoctor

Script to check that the following Rails technologies are installed and read to use:
```
rvm, rails, bundle, brew, gem, psql, mysql, sqlite3, git, ruby, heroku, travis, xcode
```

[![Build Status](https://travis-ci.org/jasnow/rdoctor.png)](https://travis-ci.org/jasnow/rdoctor)

[![Dependency Status](https://gemnasium.com/jasnow/rdoctor.png)](https://gemnasium.com/jasnow/rdoctor.png)


## Installation

Add this line to your application's Gemfile:

    gem 'rdoctor'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rdoctor

## Usage

- **rdoctor** (no arguments check following technologies (very quick):
```
rvm, rails, bundle, brew, gem, psql, mysql, sqlite3, git, ruby, heroku, travis, xcode
```

- **rdoctor 1** ('1' argument adds one-line env output too)

- **rdoctor m** ('m' argument adds  multiple-line env output too)

- **rdoctor b** ('b' argument adds 'brew doctor' too; usually takes a long time)

- When you execute '**rdoctor --help**', you get this:
```
    Usage: rdoctor [ b ] [ 1 ] [ m ]
        -- No arguments check following technologies (very quick)
            -- rvm rails bundle brew gem psql mysql sqlite3 git ruby heroku
            -- travis xcode
        -- 'b' add 'brew doctor' run too.
        -- '1' add one-line env output too.
        -- 'm' add multiple-line env output too.
```

## To run the Tests

- **rake** (to run minitests tests)
- **rake features** (to run command line (cucumber) tests)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
