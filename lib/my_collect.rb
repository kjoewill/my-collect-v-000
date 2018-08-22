

def my_collect(collection)
  results = []
  i = 0 
  while 1 < collection.length 
    results[i] << yield collection[i]
    i += 1
  end
  results
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
puts my_collect(array) { |name| name.split(" ").first }