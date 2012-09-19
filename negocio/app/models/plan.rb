class Plan < ActiveRecord::Base
	has_many :customer_plans
	has_many :customers, :throught => :customer_plans
end
