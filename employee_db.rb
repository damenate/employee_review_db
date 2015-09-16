require 'active_record'

ActiveRecord::Base.establish_connection()
  adapter: 'sqlite3',
  database: 'review_db.sqlite3'
  )

  class Employee <ActiveRecord::Base
    belongs_to :department
  end
