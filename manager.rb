require_relative "employee"

class Manager < Employee

  attr_reader :employees

  def initialize(name, title, salary, boss)
    @employees = []
    super
  end

  def bonus(multiplier)
    sum = 0
    employees.salary.each do |salary|
      sum += salary
    end
    sum * multiplier
  end

  def add_employee(employee)
    employees << employee
  end
end