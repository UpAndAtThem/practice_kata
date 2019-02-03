class TestClass
  private
  @@count = 68

  public

  def test
    puts @@count
  end

  def self.test_class_var
    puts @@count
  end
end

TestClass.new.test

TestClass.test_class_var
