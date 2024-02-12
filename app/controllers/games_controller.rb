require "open-uri"
require "json"
class GamesController < ApplicationController

  def new
  end

  def score
    @word = params[:word]
    apiurl = "https://wagon-dictionary.herokuapp.com/#{@word}"
    result_serialized = URI.open(apiurl).read
    result = JSON.parse(result_serialized)
    @found = result["found"]
  end
end
