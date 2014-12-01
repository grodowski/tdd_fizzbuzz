require 'fizzbuzz'

describe FizzBuzz do 
  it 'acceps a number and returns it' do 
    expect(subject.call(1)).to eq '1'
  end

  it 'returns fizz for 3' do 
    expect(subject.call(3)).to eq 'fizz'
  end  
  
  it 'raises an error for 0 and -2' do 
    [0, -2].each do |n|
      expect { subject.call(n) }.to raise_error('invalid input')
    end
  end
  
  it 'raises an error for any non-integer input' do 
    [1.22, 'test', {}].each do |n|
      expect { subject.call(n) }.to raise_error('invalid input')
    end
  end
  
  it 'returns fizz for any number divisible by 3' do 
    [3, 9, 27, 189].each do |n|
      expect(subject.call(n)).to eq 'fizz'
    end
  end
  
  it 'returns buzz for any number divisible by 5' do 
    [5, 25, 1505, 245].each do |n|
      expect(subject.call(n)).to eq 'buzz'
    end
  end
  
  it 'returns fizzbuzz for numbers divisible by 3 and 5' do 
    [15, 60, 300, 1500].each do |n| 
      expect(subject.call(n)).to eq 'fizzbuzz'
    end
  end
  
  describe 'print' do 
    
  end
end