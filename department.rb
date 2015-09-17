# require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'review_db.sqlite3'
  )
11
class Department <ActiveRecord::Base
  has_many :employees

  def add_employee(employee)
    employees << employee
    #employee.update(department_id: self.id)
  end

   def total_salary
    employees.sum(:salary)
    employees.reduce(0){|sum, employee| sum + employee.salary}
   end

   def give_raise(total_amount)
    getting_raise = employees.select {|e| e.satisfactory?}
    getting_raise.each {|e| e.give_raise(total_amount / getting_raise.length)}
  #   getting_raise = employees.where(satisfactory: true)
  #   getting_raise.each {|e| e.give_raise(total_amount / getting_raise.length)}
   end
end
