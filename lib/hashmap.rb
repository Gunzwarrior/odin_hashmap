class Hashmap

  attr_reader :capacity

  def initialize
    @capacity = 16
    @load_factor = 0
  end

  def hash(string)
    hash_code = 0
    prime_number = 31

    string.each_char { |char| hash_code = prime_number * hash_code + char.ord }

    hash_code % capacity
  end

  def set
    
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
