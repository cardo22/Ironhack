arr = [
	{ :lat => 25, :lng => 80, :name => "Miami"   }, # 0
	{ :lat => 48, :lng => 2,  :name => "Paris"   }, # 1
	{ :lat => 40, :lng => 3,  :name => "Madrid"  }, # 2
	{ :lat => 18, :lng => 66, :name => "San Juan"}  # 3
]
puts arr[2][:name]
puts arr[2][:lat]
puts arr[2].empty?
puts arr[2].invert
