class CreateFoodsTable < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string  :name
      t.integer :calories
      t.text  :image
      t.timestamps
    end
  end
end
