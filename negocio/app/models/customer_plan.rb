class CustomerPlan < ActiveRecord::Base
      belongs_to :customer
	  belongs_to :plan
end
