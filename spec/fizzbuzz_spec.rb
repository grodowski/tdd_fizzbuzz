require 'fizzbuzz'

describe FizzBuzz do 
  it 'acceps a number and returns it' do 
    expect(subject.call('1')).to eq '1'
  end

  it 'returns fizz for 3' do 
    expect(subject.call('3')).to eq 'fizz'
  end  
  
  it 'raises an error for 0 and -2' do 
    ['0', '-2'].each do |n|
      expect { subject.call(n) }.to raise_error('invalid input')
    end
  end
  
  it 'raises an error for any non-integer input' do 
    ['1.22', 'test', {}].each do |n|
      expect { subject.call(n) }.to raise_error('invalid input')
    end
  end
  
  it 'returns fizz for any number divisible by 3' do 
    ['3', '9', '27', '189'].each do |n|
      expect(subject.call(n)).to eq 'fizz'
    end
  end
  
  it 'returns buzz for any number divisible by 5' do 
    ['5', '25', '1505', '245'].each do |n|
      expect(subject.call(n)).to eq 'buzz'
    end
  end
  
  it 'returns fizzbuzz for numbers divisible by 3 and 5' do 
    ['15', '60', '300', '1500'].each do |n| 
      expect(subject.call(n)).to eq 'fizzbuzz'
    end
  end

  it 'returns fizz when 3 is one of digits' do 
    ['34', '203', '343'].each do |n|
      expect(subject.call(n)).to eq 'fizz'
    end
  end
  
  it 'returns buzz when 5 is one of digits' do 
    ['55', '256'].each do |n|
      expect(subject.call(n)).to eq 'buzz'
    end
  end
  
  describe '.print' do     
    it 'prints fizzbuzz output' do
      res = subject.print('10')
      expected = '1\n2\nfizz\n4\nbuzz\nfizz\n7\n8\nfizz\nbuzz\n'
      expect(res).to eq expected
    end
  end
  
  describe 'customisation' do
    subject { FizzBuzz.new(fizz: 4, buzz: 7) }
    
    it 'returns fizz for divisible by 4' do 
      %w(4, 16, 128).each do |n|
        expect(subject.call(n)).to eq 'fizz'
      end
    end
    
    it 'returns buzz for divisible by 7' do
      %w(7, 63).each do |n|
        expect(subject.call(n)).to eq 'buzz'
      end
    end
    
    it 'returns fizzbuzz for 28 and 56' do 
      %w(28, 56).each do |n|
        expect(subject.call(n)).to eq 'fizzbuzz'
      end
    end
    
  end
  
end