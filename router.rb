class Router
  def initialize(meals_controller, customers_controller, sessions_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @sessions_controller = sessions_controller
  end

  def run

    @employee = @sessions_controller.sign_in

    puts @employee.username

    loop do
      if @employee.manager?
        print_actions_manager
        action = gets.chomp.to_i
        dispatch_manager(action)
      else
        print_actions_rider
        action = gets.chomp.to_i
        dispatch_rider(action)
      end
    end
  end

  private

  def print_actions_manager
    puts '-' * 30
    puts "--- MANAGER MENU ---"
    puts '-' * 30
    puts '1. Create a new Meal'
    puts '2. List all meals'
    puts '-' * 30
    puts '3. Create a new Customer'
    puts '4. List all customers'
    puts '-' * 30
  end

  def dispatch_manager(action)
    case action
    when 1 then @meals_controller.add
    when 2 then @meals_controller.list
    when 3 then @customers_controller.add
    when 4 then @customers_controller.list
    end
  end

  def print_actions_rider
    puts '-' * 30
    puts "--- RIDER MENU ---"
    puts '-' * 30
    puts 'PUTS RIDER OPTIONS HERE'
    puts '-' * 30
  end

  def dispatch_rider(action)
    # TODO: call rider action
  end
end
