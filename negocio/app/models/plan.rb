class Plan < ActiveRecord::Base
  belongs_to :sabio
  belongs_to :category
 	validates_presence_of :title, :message => "ingresar datos"
    validates_presence_of :vision, :message => "ingresar datos"
    validates_presence_of :reasoning, :message => "ingresar datos"
    validates_presence_of :time_month, :message => "ingresar datos"
    validates_presence_of :total_investment, :message => "ingresar datos"
    validates_presence_of :net_margin, :message => "ingresar datos"
    validates_presence_of :roi, :message => "ingresar datos"
    validates_presence_of :path_file_plan, :message => "ingresar datos"
    validates_presence_of :price_file, :message => "ingresar datos"
    validates_presence_of :viable, :message => "ingresar datos"
    validates_presence_of :sabio_id, :message => "ingresar datos"
    validates_presence_of :category_id, :message => "ingresar datos"
    
end
