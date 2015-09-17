ActiveRecord::Base.establish_connection(
adapter: 'sqlite3',
database: 'review_db.sqlite3'
)

class ReviewMigration < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :department_id
      t.decimal :salary, precision: 5, scale: 2
      t.integer :phone
      t.string :email
      t.boolean :satisfactory, default: true
      t.timestamps null: false
    end
    create_table :departments do |t|
      t.string :name
      t.timestamps null: false
    end
    create_table :reviews do |t|
      t.integer :employee_id
      t.string :review
      t.timestamps null: false
    end
  end
end
