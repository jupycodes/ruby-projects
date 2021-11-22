require "employee"

class Startup
attr_reader :name, :funding, :salaries, :employees

    def initialize(name, funding, salaries) 
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = [] 
    end

    def valid_title?(title)
        salaries.keys.include?(title)
    end

    def >(new_startup)
        self.funding > new_startup.funding
    end

    def hire(name, title)
        if self.valid_title?(title)
            @employees << Employee.new(name, title)
        else
            raise "Invalid title"
        end
    end

    def size
        @employees.length
    end

    def pay_employee(employee)
       earns = @salaries[employee.title]
       if @funding > earns
            employee.pay(earns)
            @funding -= earns
       else
            raise "Not enough funding"
       end 
    end

    def payday
        @employees.each {|employee| self.pay_employee(employee)}
    end

    def average_salary
        total_salaries = 0

        @employees.each do |employee|
            total_salaries += @salaries[employee.title]
        end

        total_salaries / @employees.length.to_f
    end

    def close
        @employees = []
        @funding = 0
    end

    def acquire(startup)
        @funding += startup.funding
        startup.salaries.each {|key, value| @salaries[key] = value if !@salaries.keys.include?(key)}
        startup.employees.each {|employee| @employees << employee}
        startup.close
    end

end
