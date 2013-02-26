# Easy::Bin

EasyBin is a template gem that can be used for reference or export to get up and running fast in gem development.

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

## Usage of Newgem for Installation in a application

Add this line to your application's Gemfile:

    gem 'newgem'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install newgem

## Tests

Colorful Minitest with Turn using the Outline style are already setup.
