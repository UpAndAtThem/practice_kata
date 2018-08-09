class ToDoList
  def initialize
    @list = []
  end

  def add_to_do(to_do, *tags)
    @list << ToDo.new(to_do, tags)
  end

  def remove_oldest
    @list.shift
  end

  def display
    @list.each { |to_do| puts to_do}
    nil
  end
end

class ToDo
  attr_reader :to_do, :tags

  def initialize(to_do, *tags)
    @to_do = to_do
    @tags = tags
  end

  def to_s
    self.to_do
  end
end


list = ToDoList.new

list.add_to_do("Buy groceries", "household", "food", "chores", "budget")
list.add_to_do("Mow yard", "chores", "yardwork")

list.display

list
list.remove_oldest
list