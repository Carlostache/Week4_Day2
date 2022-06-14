require "byebug"

class Employee

  attr_reader :salary
  attr_writer :boss

  def initialize(name, title, salary, boss = nil)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end

  def bonus(multiplier)

    bonus = @salary * multiplier

  end

  def boss=(new_boss)
    @boss = new_boss
    if !@boss.nil? && !@boss.employees.include?(self)
      @boss.employees << self
    end
  end

end