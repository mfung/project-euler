require 'rspec'
require 'rspec-given'
require './example_2.rb'

describe 'Fibonacci sequence' do
  context "n=1" do
    Given(:num) { 1 }
    When(:result) { fib_array(num) }
    Then { expect(result).to eql [1]}
  end
  context "n=2" do
    Given(:num) { 2 }
    When(:result) { fib_array(num) }
    When(:sum) { fib_sum(num) }
    Then { expect(result).to eql [1,2] }
    Then { expect(sum).to eql 3 }
  end
end