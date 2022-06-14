require_relative "employee.rb"

class Manager < Employee
  
  attr_reader :employees

  def initialize(name, title, salary, boss = nil)
    super
    @employees = []

  end

  def bonus(multiplier)

    bonus = all_sub_salaries * multiplier

  end

  def all_sub_salaries
    total_salary = 0
      self.employees.each do |employee|
        if employee.is_a?(Manager)
          total_salary += employee.all_sub_salaries +  employee.salary
        else
          total_salary += employee.salary
        end
      end
    return total_salary
  end

end