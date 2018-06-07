# Sedan class
class Sedan
  attr_reader :model, :year, :price, :colors, :air

  def initialize(model: self.model, year: self.year,
                 base_price: self.base_price, colors: self.colors,
                 air: self.air)
    @base_price = base_price
    @colors = colors
    @air = air
    @model = model
    @year = year
  end

  def list_details
    "The #{@colors[5]} #{@year} Lincoln #{@model}"\
     "#{' with air' if @air} is $#{@base_price}"
  end
end

Sedan.new(model: 'Town Car', year: 2016, base_price: 24_599,
          colors: %w(blue black white red silver smoke),
          air: true)

