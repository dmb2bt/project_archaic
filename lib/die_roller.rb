module DieRoller
  def self.roll(times, sides)
    (1..times).inject(0) { |memo, value| memo + rand(sides) + 1 }
  end
end

