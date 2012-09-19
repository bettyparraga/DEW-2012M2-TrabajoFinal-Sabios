class Customer < ActiveRecord::Base
	has_many :customer_plans
	has_many :plans, :throught => :customer_plans
end
