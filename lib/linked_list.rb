class LinkedList
#add append delete find
  def initialize
    @head = nil
  end

  def append(value)
    if @head
      find_tail.next = Node.new(value)
    else
      @head = Node.new(value)
    end
  end

  def find_tail
    node = @head
    return node if !node.next
    return node if !node.next while (node = node.next)
  end

  def find(value)
    node = @head

    return false if !node.next
    return node if node.value == value
    while (node = node.next)
      return node if node.value == value
    end
  end

  def delete(value)
    if @head.value == value
      @head = @head.next
      return
    end
    node = find_before(value)
    node.next = node.next.next
  end

  def find_before(value)
    node = @head

    return false if !node.next
    return node if node.next.value == value

    while (node = node.next)
      return node if node.next && node.next.value == value
    end
  end

end