class FizzBuzz  
  FIZZ = 'fizz'
  
  def call(num)
    @num = num
    validate!
    return FIZZ if num.to_i == 3
    num.to_s
  end
  
  private 
  
  def validate!
    raise 'invalid input' unless valid?
  end
  
  def valid?
    @num.respond_to?(:to_i) && 
    @num.to_i == @num &&
    @num.to_i > 0
  end
end