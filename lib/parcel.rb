class Parcel
  define_method(:initialize) do | height, width, depth, weight |
    @height = height
    @width = width
    @depth = depth
    @weight = weight
  end

  define_method(:volume) do
    @volume = @width * @height * @depth
  end

  define_method(:cost_to_ship) do | distance |
    @distance = distance

    if @distance >= 250
      @weight * 7
    else
      @weight * 5
    end

  end

  define_method(:cost_to_wrap) do
    @surface_area = (@height * @depth * 2) + ( @width * @depth * 2) + (@height * @width *2)
    if @surface_area > 12
      20
    else
      10
    end
  end

end
