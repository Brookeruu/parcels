class Parcel
  attr_accessor(:length, :width, :height, :weight, :distance)

  def initialize(length, width, height, weight, distance)
    @length = length
    @width = width
    @height = height
    @weight = weight
    @distance = distance
  end

  def get_volume
    volume = length * width * height
  end

  def cost_weight
    weight_cost = weight * 2
  end

  def cost_distance
    distance_cost = distance * 3
  end

  def parcel_cost(length, width, height, weight, distance)
    calc_weight = cost_weight()
    calc_distance = cost_distance()
    calc_volume = get_volume()
    cost = calc_weight + calc_distance
    if calc_volume >= 30
     cost + 5
    end
  end
end
