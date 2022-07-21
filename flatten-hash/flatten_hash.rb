# Given a hash, return a flat array containing all the hash’s keys and values.

# Input: {“a” => 1, “b” => 2, “c” => 3, “d” => 4}
# Output: [“a”, 1, “b”, 2, “c”, 3, “d”, 4]

def flatten(hash)
  output = []
  hash.each do |key, value|
    output << key
    output << value
  end
  output
end

p flatten({ "a" => 1, "b" => 2, "c" => 3, "d" => 4 })

# p ({ "a" => 1, "b" => 2, "c" => 3, "d" => 4 }).flatten #ruby function
