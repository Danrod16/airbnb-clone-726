require "open-uri"

class FlatsController < ApplicationController
  before_action :flats_api

  def index
  end

  def show
    @flat = @flats.find { |flat| flat["id"] == params[:id].to_i }

  end

  private

  def flats_api
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end
end
