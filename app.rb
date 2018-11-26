require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcels')

get('/') do
  erb(:input)
end

get('/output') do
  @length = params.fetch("length").to_i
  @width = params.fetch("width").to_i
  @height = params.fetch("height").to_i
  @weight = params.fetch("weight").to_i
  @distance = params.fetch("distance").to_i

  price = Parcel.new(@length, @width, @height, @weight, @distance)

  @display = "#{price.parcel_cost}"
  erb(:output)
end
