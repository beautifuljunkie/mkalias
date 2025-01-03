require 'command'
require 'commands/mka'

require 'mkalias'

# Command 'mkalias show' implementation
class Show < Command
  def self.options_messages
    %(  show \t\t $ mkalias show
  \t\t - Show commands of all alias

  \t\t $ mkalias show [alias 1] [alias 2] ... [alias n]
  \t\t - Show commands of the specified alias
    )
  end

  def self.command_name
    'show'
  end

  def self.parent
    Mka
  end

  def self.run(argv)
    alias_names = ARGV.count < 2 ? Mkalias.list_alias : ARGV[1..-1]
    commands = Mkalias.show_alias(alias_names)

    check_alias_exists(alias_names, commands.keys)

    unless commands.empty?
      commands.each do |alias_name, alias_commands|
        puts "-> #{alias_name}"
        alias_commands.each { |alias_command| puts " $ #{alias_command}" }
        puts ''
      end
    end
  end

  def self.check_alias_exists(alias_list, used_alias_names)
    alias_not_founded = alias_list - used_alias_names
    unless alias_not_founded.empty?
      alias_not_founded = alias_not_founded.join(', ')
      puts "Alias not founded: #{alias_not_founded}"
      puts ''
    end
  end
end
