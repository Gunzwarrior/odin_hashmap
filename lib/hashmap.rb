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

  def get
    
  end

  def key?
    
  end

  def remove
    
  end

  def length
    
  end

  def clear
    
  end

  def keys
    
  end

  def values
    
  end

  def entries
    
  end

end
