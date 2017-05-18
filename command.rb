class Command
  attr_accessor :nick, :user, :name, :arguments

  def self.parse(line)
    line = line.dup
    if line.start_with?(':')
      prefix = line.slice!(/:.+?\s/)[1..-2]
      parts = prefix.split('!')

      if parts.size == 1
        nick = nil
        user = parts.first
      else
        nick, user = parts
      end
    end

    trailing = line.slice!(/:.+\Z/)[1..-1] if line.include?(':')
    name, *arguments = line.split(' ')
    arguments << trailing if trailing

    new(nick: nick, user: user, name: name, arguments: arguments)
  end

  def initialize(options={})
    options.each do |key, value|
      send("#{key}=", value)
    end
  end
end
