puts "Your age?"
age = gets
puts age.class
puts "=" * 80
print "Your age is " + age

age_months = age.to_i * 12
puts "Your age in months is " + age_months.to_s