require_relative 'node'

class LinkedList
attr_reader :head
  def initialize
    @head = nil
  end

  def append(array)
    if @head
      find_tail.next = Node.new(array)
    else
      @head = Node.new(array)
    end
  end

  def find_tail
    node = @head
    return node if !node.next
    return node if !node.next while (node = node.next)
  end

  def find(array)
    node = @head

    return false if !node.next
    return node if node.value == array
    while (node = node.next)
      return node if node.value == array
    end
  end

  def find_key(key)
    node = @head

    return false if !node.next
    return node if node.value[0] == key
    while (node = node.next)
      return node if node.value[0] == key
    end
  end

  def find_value(value)
    node = @head

    return false if !node.next
    return node if node.value[1] == value
    while (node = node.next)
      return node if node.value[1] == value
    end
  end

  def delete(key)
    if @head.value[0] == key
      @head = @head.next
      return
    end
    node = find_before(key)
    node.next = node.next.next
  end

  def find_before(key)
    node = @head

    return false if !node.next
    return node if node.next.value[0] == key

    while (node = node.next)
      return node if node.next && node.next.value[0] == key
    end
  end

end