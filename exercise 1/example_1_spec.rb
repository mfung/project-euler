require 'rspec'
require 'rspec-given'
require './example_1.rb'

describe 'Multiples of 3 and 5' do
  context "given a target of 4" do
    Given(:target) { 4 }
    When(:sum) { sum_multiples_of_3_or_5(target) }
    Then { expect(sum).to eql 3 }
  end

  context "given a target of 5" do
    Given(:target) { 5 }
    When(:sum) { sum_multiples_of_3_or_5(target) }
    Then { expect(sum).to eql 3 }
  end

  context "given an easy target of 6" do
    Given(:target) { 6 }
    When(:sum) { sum_multiples_of_3_or_5(target) }
    Then { expect(sum).to eql 8 }
  end

  context "given an target of 7" do
    Given(:target) { 7 }
    When(:sum) { sum_multiples_of_3_or_5(target) }
    Then { expect(sum).to eql 14 }
  end

  context "given an target of 10" do
    Given(:target) { 10 }
    When(:sum) { sum_multiples_of_3_or_5(target) }
    Then { expect(sum).to eql 23 }
  end
end