class CreateMealsTable < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string  :name
      t.text  :description
      t.date  :eat_date
      t.time  :eat_time
      t.timestamps
    end
  end
end
