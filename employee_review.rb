ActiveRecord::Base.establish_connection(
adapter: 'sqlite3',
database: 'review_db.sqlite3'
)

class ReviewMigration < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :employee_id
      t.decimal :employee_salary
      t.integer :employee_phone
      t.string :email
      t.boolean :satisfactory
      t.text :review
      t.timestamps null: false
    end

    create_table :departments do |t|
      t.string :name
      t.integer :department_id

    end
  end
end

AlbumMigration.migrate(:up)
rescue false
end
