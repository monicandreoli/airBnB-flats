require "open-uri"
class FlatsController < ApplicationController

  before_action :set_flats, only: [:index, :show]
  # before executing any action, you need to execute first set_flats

  def index
    # url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    # @flats = JSON.parse(open(url).read)
  end

  def show
    # url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    # @flats = JSON.parse(open(url).read)
    # # well need to find the flat that corresponds the id that the user is passing in the url
    @flat = @flats.find { |flat| flat['id'] == params[:id].to_i }
  end


  private

  def set_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end
end
