require 'active_record'

ActiveRecord::Base.establish_connection()
  adapter: 'sqlite3',
  database: 'review_db.sqlite3'
  )

  class Department <ActiveRecord::Base
    has_many :employee
  end
