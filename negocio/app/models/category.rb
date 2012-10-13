class Category < ActiveRecord::Base
  has_many :plans
  validates_presence_of  :name, :message => "^Debe ingresar un nombre de categoria"
end
