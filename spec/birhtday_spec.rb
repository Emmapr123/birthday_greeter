require './birthday_calculator'

describe Birtday do
  describe '#calculate_birthday' do
    it 'should know how when my birthday is' do
      expect(subject.calculate_birthday(02, 02)).to eq '033'
    end
    it 'should know how many days to simons birthday' do
      expect(subject.calculate_birthday(07, 31)).to eq '212'
    end
  end    

  describe '#calculate_current_day' do
    it 'should calculate what day it is today' do
      expect(subject.calculate_current_day).to eq '075'
    end
  end

  describe '#when_is_my_birthday' do
    it 'should wish me a happy birthday if my birthday is today' do
      expect(subject.when_is_my_birthday('name', 03, 16)).to eq 'Happy Birthday, name!'
    end
    it 'should tell me my birthday is in 31 days' do
      expect(subject.when_is_my_birthday('name', 04, 16)).to eq 'name, your birthday is in 31 days'
    end
    it 'should tell me my birthday is in 360 days' do
      expect(subject.when_is_my_birthday('name', 03, 11)).to eq 'name, your birthday is in 360 days'
    end
  end
end 
