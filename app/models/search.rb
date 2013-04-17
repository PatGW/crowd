
require "curb"

class Search

  attr_accessor :artist, :track

  def initialize artist
    if !artist.empty?
      @artist = artist
    else
      @artist = nil
    end
  end

  def do_search
    if @artist
      @result = Curl::Easy.perform("http://developer.echonest.com/api/v4/song/search?api_key=JMEUQC5ZW6CHVBCXG&artist=#{@artist}").body_str

      parse_json(@result)
    else
      nil
    end
  end


private

def parse_json(result)
  parse_result = JSON.parse(result)
  parse_result["response"]["songs"]
end


end
