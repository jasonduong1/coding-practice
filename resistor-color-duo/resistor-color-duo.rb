class ResistorColorDuo
  @coded_bands = { "black" => 0, "brown" => 1, "red" => 2, "orange" => 3, "yellow" => 4, "green" => 5, "blue" => 6, "violet" => 7, "grey" => 8, "white" => 9 }
  def self.value(array)
    (@coded_bands[array[0]].to_s + @coded_bands[array[1]].to_s).to_i
  end
end

p ResistorColorDuo.value(["brown", "black"])
