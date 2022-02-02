class CustomersView
  def ask_name
    puts "Enter customer name:"
    gets.chomp
  end

  def ask_address
    puts "Enter customer address:"
    gets.chomp
  end

  def list(customers)
    customers.each_with_index do |customer, index|
      puts "#{index + 1} | Name: #{customer.name} | Address #{customer.address}"
    end
  end
end
