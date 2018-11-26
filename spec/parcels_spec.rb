require 'rspec'
require 'pry'
require 'parcels'

describe('#parcels') do
  it("Determine the volume of the parcel.") do
    parcel1 = Parcel.new(3,3,3, nil, nil)
    expect(parcel1.get_volume()).to(eq(27))
  end

  it("Determine the cost for weight.") do
    parcel2 = Parcel.new(nil, nil, nil, 8, nil)
    expect(parcel2.cost_weight()).to(eq(16))
  end

  it("Determine the cost for distance.") do
    parcel3 = Parcel.new(nil, nil, nil, nil, 75)
    expect(parcel3.cost_distance()).to(eq(225))
  end

  it("Determine the total cost for parcel.") do
    parcel4 = Parcel.new(5, 5, 5, 10, 20)
    expect(parcel4.parcel_cost(5, 5, 5, 10, 20)).to(eq(85))
  end


end
