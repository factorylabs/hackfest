require 'rubygems'
require 'summer'
require 'mrtbot'

class OtherBot < Summer::Connection
  include MrTBot
end

OtherBot.new("irc.freenode.net")
