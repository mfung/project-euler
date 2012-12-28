require 'rspec'
require 'rspec-given'
require './example_1.rb'

describe 'Multiples of 3 and 5' do
  context "given an easy target of 5" do
    Given(:target) { 5 }
    When(:sum) { sum_multiples_of_3_or_5(target) }
    Then { expect(sum).to eql 8 }
  end
end