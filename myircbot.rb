require 'rubygems'
require 'summer'

class AsciiBot < Summer::Connection
end

AsciiBot.new("irc.freenode.net")
