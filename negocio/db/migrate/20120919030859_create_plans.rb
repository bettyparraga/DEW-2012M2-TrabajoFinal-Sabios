class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :title
      t.string :category
      t.text :vision
      t.text :reasoning
      t.integer :time
      t.float :total_investment
      t.float :net_margin
      t.float :roi

      t.timestamps
    end
  end
end
