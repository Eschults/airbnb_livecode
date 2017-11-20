require "open-uri"
require "json"

class FlatsController < ApplicationController
  def index
    @flats = fetch_flats
  end

  def show
    id = params[:id].to_i - 1
    flats = fetch_flats
    @flat = flats[id]
  end

  private

  def fetch_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    return JSON.parse(open(url).read)
  end
end
