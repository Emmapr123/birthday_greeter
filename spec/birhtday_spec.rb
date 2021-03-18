require './birthday_calculator'

describe BirthdayCalculator do
  let(:person) { BirthdayCalculator.new('Name')}
  describe '#calculate_birthday' do
    it 'should know how when my birthday is' do
      expect(person.calculate_birthday(02, 02)).to eq '033'
    end
    it 'should know how many days to simons birthday' do
      expect(person.calculate_birthday(07, 31)).to eq '212'
    end
  end    

  describe '#calculate_current_day' do
    it 'should calculate what day it is today' do
      expect(person.calculate_current_day).to be_a String
    end
  end

  describe '#when_is_my_birthday' do
    it 'should wish me a happy birthday if my birthday is today' do
      expect(person.when_is_my_birthday(03, 16)).to be_a String
    end
    it 'should tell me my birthday is in 31 days' do
      expect(person.when_is_my_birthday(04, 16)).to be_a String
    end
    it 'should tell me my birthday is in 360 days' do
      expect(person.when_is_my_birthday(03, 11)).to be_a String
    end
  end
end 
