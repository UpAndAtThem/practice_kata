module MyModule
  def to_terminal(string)
    p string
  end
end

class MyCustomClass
  include MyModule
end
MyCustomClass.new.to_terminal("Hello")