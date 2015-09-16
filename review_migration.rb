ActiveRecord::Base.establish_connection(
adapter: 'sqlite3',
database: 'review_db.sqlite3'
)

class ReviewMigration < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :department_id
      t.decimal :salary
      t.integer :phone
      t.string :email
      t.boolean :satisfactory
      t.text :review
      t.timestamps null: false
    end

    create_table :departments do |t|
      t.string :name
    end
  end
end
