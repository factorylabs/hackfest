require 'rubygems'
require 'googleajax'
require 'httparty'
require 'summer'
GoogleAjax.referrer = 'localhost'

class AsciiBot < Summer::Connection
  def ascii_command(sender, channel, message)
    image_url =  GoogleAjax::Search.images(message)[:results].first[:url]
    ascii_url = "http://skeeter.blakesmith.me/?image_url=#{image_url}&width=30"
    @channel = channel
    @response = HTTParty.get(ascii_url).split("\n")
    stream_response_without_flooding
  end

  private

  def stream_response_without_flooding
    return if @response.empty?
    @response.shift(5).each do |line|
      privmsg(line, @channel)
    end
    wait_for_ping
  end

  def wait_for_ping
    response "PING :excess"
  end

  def parse_with_pong(message)
    if message =~ /PONG/
      stream_response_without_flooding
    else
      parse_without_pong message
    end
  end
  alias_method :parse_without_pong, :parse
  alias_method :parse, :parse_with_pong
end

AsciiBot.new("irc.freenode.net")
