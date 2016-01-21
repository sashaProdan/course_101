
def valid_number?(num)
  num.to_i != 0 
end

puts "Welcome to our Loan Calculator!"
loop do 

loan_amount = ''
loop do
  puts "Please enter the loan amount!"
  loan_amount = gets.chomp
  valid_number?(loan_amount) ? break : "It doesn't look like a valid loan amount"
end

interest_rate = ''
loop do
  puts "Please enter the Annual Interest Rate for this loan!"
  interest_rate = gets.chomp
  valid_number?(interest_rate) ? break : "It doesn't look like a valid Interest Rate."
end

years_duration = ''
loop do
  puts "Please enter the duration period (in years) for this loan."
  years_duration = gets.chomp
  valid_number?(years_duration) ? break : "It doesn't look valid."
end

monthly_rate    = interest_rate.to_f / 100.to_f / 12.to_f
months_duration = (years_duration.to_f * 12)
payment         = loan_amount.to_f * ((monthly_rate *((1 + monthly_rate)** months_duration)) /
				  (((1 + monthly_rate)**months_duration) - 1))
future_value    = loan_amount.to_f * ((1 + monthly_rate)**months_duration)

puts "According to your records your monthly payment for this loan will be #{payment.round(2)}!"
puts "Your final loan cost at the end of last period is #{future_value.round(2)}!"
puts "Would you like to calculate another loan? If Yes - press 'y', if No - press any other key."
answer = gets.chomp
break unless answer.downcase.start_with?('y')
end
puts "Thank you for using our Loan Calculator!"
