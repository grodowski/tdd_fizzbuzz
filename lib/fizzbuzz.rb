class FizzBuzz  
  FIZZ = 'fizz'
  BUZZ = 'buzz'
    
  def call(num)
    @num = num
    validate!
    res = ''
    res = check_fizzbuzz
    res == '' ? num.to_s : res
  end
  
  private 
  
  def check_fizzbuzz
    res, i = '', @num.to_i
    res << FIZZ if i % 3 == 0
    res << BUZZ if i % 5 == 0
    res
  end
  
  def validate!
    raise 'invalid input' unless valid?
  end
  
  def valid?
    @num.respond_to?(:to_i) && 
    @num.to_i == @num &&
    @num.to_i > 0
  end
end