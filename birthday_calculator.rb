class Birthday

  def initialize(name)
    @name = name
  end

  def calculate_birthday(month, day, year = 2021)
    birthday = Time.new(year, month, day)
    birthday.strftime('%j')
  end 

  def calculate_current_day
    Time.new.strftime('%j')
  end 

  def when_is_my_birthday(month, day, year=2021)
    @birthday = calculate_birthday(month, day, year=2021)
    @today = calculate_current_day
    @birthday == @today ?  happy_birthday : count
  end

  def happy_birthday
    return "Happy Birthday, #{@name}!"
  end 

  def count
    if @birthday.to_i > @today.to_i
    "#{@name}, your birthday is in #{@birthday.to_i - @today.to_i} days"
    else
    "#{@name}, your birthday is in #{365 - (@today.to_i - @birthday.to_i)} days"
    end
  end 
end 