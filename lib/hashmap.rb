class Hashmap
  attr_accessor :buckets, :capacity

  def initialize
    @capacity = 16
    @buckets = buckets_init
  end

  def buckets_init
    buckets = []
    capacity.times { buckets.push(LinkedList.new) } 
    buckets
  end
 
  def overload?
    length/@capacity.to_f >= 0.75
  end

  def double_cap
    @capacity = capacity * 2
  end

  def rehash
    array = entries
    clear
    array.each {|pair| set(pair[0], pair[1])}
    buckets
  end

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
    if overload?
      double_cap
      rehash
    end

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
    @buckets = buckets_init
  end

  def keys
    array = []
    buckets.each {|bucket| array.push(bucket.all_keys)}
    array.flatten.compact
  end

  def values
    array = []
    buckets.each {|bucket| array.push(bucket.all_values)}
    array.flatten.compact
  end

  def entries
    array = []
    buckets.each {|bucket| array.push(bucket.all_arrays)}
    array.flatten(1).compact
  end

end
