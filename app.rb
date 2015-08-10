require 'sinatra'
require 'sinatra/reloader'
require './lib/parcel'
also_reload ('./lib/**/*.rb')

get '/' do
  erb :index
end

get '/results' do
  @weight = params.fetch( 'weight') .to_i
  @depth = params.fetch('depth') .to_i
  @height = params.fetch('height') .to_i
  @width = params.fetch('width') .to_i
  @distance = params.fetch('distance') .to_i
  @parcel = Parcel.new(@height, @width, @depth, @weight)
  @shipping_cost = @parcel.cost_to_ship(@distance)

  if params.fetch('wrap') != 'false'
    @wrapping_cost = @parcel.cost_to_wrap
  else
    @wrapping_cost = 0
  end
  @total_cost = @shipping_cost + @wrapping_cost

  erb :results
end
