# Easy::Bin

EasyBin is a template gem that can be used for reference or export to get up and running fast in gem development.

## Purpose

Creating a binary can be a pain in a$$. So can setting up tests, and remembering what rubyist like and dislike.

I wanted a quick way to create `mechanize` bins that scrape html pages for data I need. Hence the Easybin!

## Generic Gem Layout

This uses the standard Generic gem layout structure

```
easybin
├── bin
│   └── gonna
├── lib
│   ├── easybin
│   │   └── version.rb
│   └── easybin.rb
├── test
│   ├── test_helper.rb
│   └── test_foo.rb
├── easybin.gemspec
└── etc...
```

## Tests

Colorful Minitest with Turn using the Outline style are already setup.

```
==============================================================================
SUITE test (SEED 59041)
==============================================================================
String::when asked about bar possibilities in front submatch
     0001 it will not match                                    0:00:00.000 PASS
String::when looking for foo
     0001 should respond positively                            0:00:00.000 PASS
==============================================================================
  pass: 2,  fail: 0,  error: 0, skip: 0
  total: 2 tests with 3 assertions in 0.001035 seconds
==============================================================================
Coverage report generated for Unit Tests to /Users/macgregors/sandbox/easybin/coverage. 31 / 90 LOC (34.44%) covered.
````

### Coverage

SimpleCov is included to provide test code coverage reporting.

![SimpleCov coverage report](http://colszowka.github.com/simplecov/devise_result-0.5.3.png)



## PrepWork

How to export EasyBin to Newgem

### Export .git Repo to 'newgem'

Create a dir called newgem and export easybin into it.

```shell
mkdir -p ~/sandbox/newgem && cd ~/sandbox/newgem
git archive --format=tar --remote=https://github.com/shadowbq/easybin.git master | tar -xf -
```

Rename all easybin files to 'newgem'

`find . -name "easybin.*" | sed 's/\(\.\/.*\)\(easybin\)\(.*\)/mv & \1newgem\3/' |sh`

Rename `gonna` executable to `doit`

`find . -name "gonna" | sed 's/\(\.\/.*\)\(gonna\)\(.*\)/mv & \1doit\3/' |sh`

Equalivent Bash Command

```shell
mv ./easybin.gemspec ./newgem.gemspec
mv ./lib/easybin.rb ./lib/newgem.rb 
```

### Search & Replace

Search and Replace all modulenames, requires, errors, constants, etc.

Example: (non Exhaustive)

`module Easy`

with 

`module Newgem`

### Edit gemspec

Fix new owner and suchforth...

## Usage

### Command Line

	$ gonna --help

###  Newgem for Installation in a application

Add this line to your application's Gemfile:

    $ gem 'newgem' "~> 0.0"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install newgem


