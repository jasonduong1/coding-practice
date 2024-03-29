# Given a hash, create a new hash that has the keys and values switched.

# Input: {"a" => 1, "b" => 2, "c" => 3}
# Output: {1 => "a", 2 => "b", 3 => "c"}

def flip(hash)
  output = {}
  hash.each { |key, value| output[value] = key }
  output
end

p flip({ "a" => 1, "b" => 2, "c" => 3 })
