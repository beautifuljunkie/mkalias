#Fork of LucianoPC/mkalias


MKalias is a gem to manage alias, when you can just add a command and you can
add a new alias, list the alias, show the alias command or remove the alias.

## Usage

    run: $ mkalias [option]

    options:

     new            $ mkalias new [alias] [command 1] [command 2] ... [command n]
                    - Create a new alias to run the commands

     list           $ mkalias list
                    - List all alias

     show           $ mkalias show
                    - Show commands of all alias

                    $ mkalias show [alias 1] [alias 2] ... [alias n]
                    - Show commands of the specified alias

     remove         $ mkalias remove [alias 1] [alias 2] ... [alias n]
                    - Remove the specified alias

     add_signal     $ mkalias add_signal
                    - Add signal to run 'source ~/.zsh_aliases' when
                    - add or remove an alias

     remove_signal  $ mkalias remove_signal"
                    - Remove signal to run 'source ~/.zsh_aliases' when
                    - add or remove an alias

     Attention:     To make alias with args use #. Example:
                    $ mkalias new [alias] "echo #1 #2 #3"
                    Then you can use: $ [alias] arg1 arg2 arg3


## Build
$ gem build

## Systemwide Install

$ sudo gem install ./mkalias-1.0.10.gem

# User Install
$ gem install --user-install ./mkalias-1.0.10.gem
