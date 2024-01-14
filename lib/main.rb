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
p map.set("six", "6")
p map.set("seven", "7")
p map.set("eight", "8")
p map.set("nine", "9")
p map.set("ten", "10")
p map.set("eleven", "11")
p map.set("twelve", "12")
p map.buckets.length
p map.set("thirteen", "13")
p map.buckets.length
p map.buckets
p map.keys
p map.values
p map.entries