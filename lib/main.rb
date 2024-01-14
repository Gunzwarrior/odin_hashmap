require_relative 'linked_list'
require_relative 'hashmap'

map = Hashmap.new
p map.buckets
p map.empty_bucket?(0)
p map.set("one", "1")
p map.buckets
p map.set("one", "2")
p map.buckets