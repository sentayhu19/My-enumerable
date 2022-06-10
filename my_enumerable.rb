module MyEnumerable
  def all?(&block)
    pass = true
    each do |e|
      pass = false unless block.call(e)
    end
    pass
  end

  def any?(&block)
    pass = false
    each do |e|
      pass = true if block.call(e)
    end
    pass
  end

  def filter?(&block)
    pass = []
    each do |e|
      pass.push(e) if block.call(e)
    end
    pass
  end
end
