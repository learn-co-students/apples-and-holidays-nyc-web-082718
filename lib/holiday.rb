require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, party_items|
    party_items.push(supply)
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  supplies_array = []
  # holiday_hash.each do |season, holiday|
  #   if season == :winter
  #     supplies_array.push(holiday.values)
  #   end
  # end
  # supplies_array.flatten
  holiday_hash[:winter].each do |holiday, supplies|
    supplies_array.push(supplies)
  end
  supplies_array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize!}:"
    holiday.each do |holiday, supplies|
      puts "  #{holiday.to_s.split("_").collect{|word| word.capitalize!}.join(" ")}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_keys = []
  holiday_hash.each do |season, holiday|
    if holiday.values.flatten.include?("BBQ")
      bbq_keys.push(holiday.keys)
    end
  end
  bbq_keys.flatten
  # holiday_hash.collect do |season, holiday|
  #   if holiday.values.flatten.include?("BBQ")
  #     holiday.keys
  #   end
  # end.compact.flatten
end







