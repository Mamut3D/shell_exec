# Shellexec

Simple ruby gem for running shell commands. Uses timeout feature with default set for 20 seconds and has variable error messages, in case you want to hide the shell error results and/or hide command which you run.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'shellexec'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install shellexec

## Usage

Run command
```
ShellExec.cmd 'ls'
```
Run command with different timeout
```
ShellExec.cmd 'ls', timeout: 60
```
Run command with different error command name in errro message
```
ShellExec.cmd 'false', cmd_name: 'ls'
```
Run command with different error command name in errro message
```
ShellExec.cmd 'false', cmd_name: 'ls'
```
Run command with different error command name in errro message without output of the command
```
ShellExec.cmd 'false', cmd_name: 'ls', secret: true
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mamut3d/shellexec.
