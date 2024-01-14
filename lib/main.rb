require_relative 'linked_list'
require_relative 'hashmap'

map = Hashmap.new
p map.buckets
p map.get("one")
p map.remove("one")
p map.key?("one")
p map.set("one", "1")
p map.set("two", "2")
p map.set("three", "3")
p map.set("four", "4")
p map.set("five", "5")
p map.get("one")
p map.buckets
p map.buckets[1].number_node
p map.buckets[6].number_node
p map.length
p map.set("five", "cinque")
p map.length
p map.remove("five")
p map.keys