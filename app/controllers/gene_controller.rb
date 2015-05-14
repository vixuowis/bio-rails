class GeneController < ApplicationController
  def index
    if params['data'] and params['place']
      @data = params['data'].split(" ").join("")
      place = params['place'].to_i
      @part0 = @data[0..place-1]
      @part1 = @data[place..-1]
    end
  end
end
