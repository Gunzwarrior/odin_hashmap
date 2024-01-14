class LinkedList
#add append delete find
  def initialize
    @head = nil
  end

  def append(value)
    if @head == nil
      @head = value
    end
  end
end