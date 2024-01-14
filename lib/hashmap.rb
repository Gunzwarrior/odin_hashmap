class Hashmap
  attr_accessor :buckets
  attr_reader :capacity

  def initialize
    @capacity = 16
    @load_factor = 0
    @buckets = buckets_init
  end

  def buckets_init
    buckets = []
    16.times { buckets.push(LinkedList.new) } 
    buckets
  end

  #method to calculate the load factor, grow the number of buckets and reequilibrate the keys in the buckets
  
  def hash(string)
    hash_code = 0
    prime_number = 31

    string.each_char { |char| hash_code = prime_number * hash_code + char.ord }

    hash_code % capacity
  end

  def empty_bucket?(index)
    raise IndexError if index.negative? || index >= @buckets.length

    buckets[index].head.nil? ? true : false

  end

  def key_exist?(bucket, key)
    bucket.find_key(key) ? true : false
  end

  def set(key, value)
    hashed_key = hash(key)
    if empty_bucket?(hashed_key)
      buckets[hashed_key].append([key, value])
    else
      buckets[hashed_key].delete(key) if key_exist?(buckets[hashed_key], key)
      
      buckets[hashed_key].append([key, value])
    end 
  end

  def get(key)
    hashed_key = hash(key)
    if empty_bucket?(hashed_key)
      nil
    else
      buckets[hashed_key].find_key(key).value[1]
    end
  end

  def key?(key)
    hashed_key = hash(key)
    if empty_bucket?(hashed_key)
      false
    else
      key_exist?(buckets[hashed_key], key) ? true : false
    end
  end

  def remove(key)
    hashed_key = hash(key)
    buckets[hashed_key].delete(key) if key?(key)

  end

  def length
    count = 0
    buckets.each {|bucket| count += bucket.number_node}
    count
  end

  def clear
    capacity = 16
    @buckets = buckets_init
  end

  def keys
    array = []
    buckets.each {|bucket| array.push(bucket.all_keys)}
    array.flatten.compact
  end

  def values
    
  end

  def entries
    
  end

end
