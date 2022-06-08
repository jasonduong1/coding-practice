# Complete this function to return either
# "Hello, [name]!" or "Hello there!"
# based on the input
def say_hello(name)
  # you can print to STDOUT for debugging like you normally would:
  # puts name

  # but you need to return the value in order to complete the challenge:
  # name # TODO: return the correct value
  if name == ""
    "Hello there!"
  else
    "Hello, #{name}!"
  end
end

p say_hello("Jason")
p say_hello("")
