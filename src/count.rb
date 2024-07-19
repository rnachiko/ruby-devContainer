class Counter
  def initialize
    @count = 0
  end

  def increment
    @count += 1
  end

  def count
    @count
  end
end

# 使用例
counter = Counter.new
puts counter.increment # 1
puts counter.increment

