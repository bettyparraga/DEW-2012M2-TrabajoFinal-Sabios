class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :title
      t.text :vision
      t.text :reasoning
      t.integer :time_month
      t.integer :total_investment
      t.integer :net_margin
      t.integer :roi
      t.string :path_file_plan
      t.integer :price_file
      t.string :viable
      t.references :sabio
      t.references :category

      t.timestamps
    end
    add_index :plans, :sabio_id
    add_index :plans, :category_id
  end
end
