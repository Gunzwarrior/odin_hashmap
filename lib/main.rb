require_relative 'linked_list'
require_relative 'hashmap'

map = Hashmap.new
p map.buckets
p map.get("one")
p map.key?("one")
p map.set("one", "1")
p map.get("one")
p map.key?("one")
p map.set("one", "2")
p map.get("one")
p map.buckets