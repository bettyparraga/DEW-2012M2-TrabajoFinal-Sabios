class CreateCustomerPlans < ActiveRecord::Migration
  def change
    create_table :customer_plans do |t|
      t.string :user_plan
      t.string :plan_title

      t.timestamps
    end
  end
end
