class Ship < Struct.new(:name, :manpower, :ic)
  class << self
    SHIP_DATA = [
      ["Battlecruiser I", 3500, 7500],
      ["Battlecruiser II", 4000, 8000],
      ["Battleship I", 6000, 9600],
      ["Battleship II", 6600, 10400],
      ["Battleship III", 7000, 11200],
      ["Battleship IV", 7400, 12000],
      ["Carrier I", 4500, 8750],
      ["Carrier II", 5000, 9500],
      ["Carrier III", 5500, 10250],
      ["Carrier IV", 6000, 11000],
      ["Destroyer I", 250, 900],
      ["Destroyer II", 325, 990],
      ["Destroyer III", 400, 1080],
      ["Destroyer IV", 500, 1200],
      ["Heavy Cruiser I", 1500, 4200],
      ["Heavy Cruiser II", 1700, 4600],
      ["Heavy Cruiser III", 1900, 5000],
      ["Heavy Cruiser IV", 2200, 5400],
      ["Light Cruiser I", 600, 3100],
      ["Light Cruiser II", 800, 3400],
      ["Light Cruiser III", 960, 3700],
      ["Light Cruiser IV", 1140, 4000],
      ["Submarine I", 200, 450],
      ["Submarine II", 200, 500],
      ["Submarine III", 200, 550],
      ["Submarine IV", 200, 600],
      ["Super-Heavy Battleship I", 9000, 18500],
      ["Super-Heavy Battleship II", 10000, 23000],
    ]

    def all
      @all ||= SHIP_DATA.map{|name, manpower, ic|
        Ship.new(name, manpower, ic)
      }
    end
  end
end
