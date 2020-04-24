require 'pry'

def hello(array)
  new_array = []
  i = 0
  while i < array.length
    binding.pry
    yield(array[i])
    i += 1
  end
  new_array
end

hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
