# frozen_string_literal: true

years = [1996, 1997, -400, 1900, 2000]
uru_year = []
not_uru_year = []

years.each do |year|
  next if year <= 0

  if (year % 400).zero?
    uru_year << year
  elsif (year % 100).zero?
    not_uru_year << year
  elsif (year % 4).zero?
    uru_year << year
  else
    not_uru_year << year
  end
end

puts '閏年は' + uru_year.to_s
puts '閏年でないのは' + not_uru_year.to_s
