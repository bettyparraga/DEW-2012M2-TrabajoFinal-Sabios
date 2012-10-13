class Plan < ActiveRecord::Base
  belongs_to :sabio
  belongs_to :category
end
