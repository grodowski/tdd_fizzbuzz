class FizzBuzz  
  FIZZ = 'fizz'
  BUZZ = 'buzz'
  
  attr_accessor :fizz_num, :buzz_num
    
  def initialize(opts = {fizz: 3, buzz: 5})  
    @fizz_num, @buzz_num = opts[:fizz], opts[:buzz]
  end
  
  def call(num)
    @num = num
    validate!
    res = check_fizzbuzz
    res == '' ? num.to_s : res
  end
  
  def print(num)
    res = ''
    (1..num.to_i).each { |n| res << call(n) + '\n' }
    res
  end
  
  private 
  
  def check_fizzbuzz
    res, i = '', @num.to_i
    check_value res, i, FIZZ, fizz_num
    check_value res, i, BUZZ, buzz_num
    res
  end
  
  def check_value(res, i, word, target)
    res << word if i % target == 0 || @num.to_s.include?(target.to_s)
  end
  
  def validate!
    raise 'invalid input' unless valid?
  end
  
  def valid?
    @num.respond_to?(:to_i) && 
    @num.to_i == @num.to_f &&
    @num.to_i > 0
  end
end