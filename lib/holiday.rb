require 'pry'

# holiday_supplies = {
#   :winter => {
#     :christmas => ["Lights", "Wreath"],
#     :new_years => ["Party Hats"]
#   },
#   :summer => {
#     :fourth_of_july => ["Fireworks", "BBQ"]
#   },
#   :fall => {
#     :thanksgiving => ["Turkey"]
#   },
#   :spring => {
#     :memorial_day => ["BBQ"]
#   }
# }

def second_supply_for_fourth_of_july(holiday_hash)
holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, decoration|
    decoration.push(supply)
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |holiday, decoration|
    decoration.push(supply)
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
    holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
   decorations_flat = []
  holiday_hash[:winter].each do |holiday, decoration|
  decorations_flat.push(decoration)
 end
 return decorations_flat.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
      puts "#{season.capitalize}:"
      holidays.each do |holiday, decoration|
        puts "  #{holiday.to_s.split('_').collect {|w| w.capitalize }.join(' ') }: #{decoration.join(", ")}"
      end
    end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_array = []
    holiday_hash.each do |season, holidays|
      holidays.each do |holiday, decoration|
        if decoration.include?("BBQ")
        holiday_array.push(holiday)
      end
    end
  end
    holiday_array
end
