require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
    holiday_hash[:winter].each do |holiday, supplies|
      supplies << supply
    end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

  holiday_hash[season][holiday_name] = supply_array

holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  final = Array.new
  holiday_hash[:winter].each do |holiday, supplies|

    final << supplies
  end
  final.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holidays|
    puts season.to_s.capitalize + ":"

    holidays.each do |holiday, supplies|
      array =  holiday.to_s.split("_")
      puts "  " + array.collect {|word| word.capitalize}.join(" ") + ": " + supplies.join(", ")
    end
  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array = []
holiday_hash.each do |season, holidays|
  holidays.each do |holiday, supplies|
        if supplies.include?("BBQ")
          array << holiday
        end
      end
    end
    array
end
