class Emprendedor < ActiveRecord::Base
  validates_presence_of  :nombres, :message => "^Debe ingresar nombre"
  validates_presence_of  :paterno, :message => "^Debe ingresar el Apellido Paterno "
  validates_presence_of  :materno, :message => "^Debe ingresar el Apellido Materno"
  validates_presence_of  :sexo,  :message => "^Debe ingresar el sexo "
  validates_presence_of  :tipo_docum_identidad, :message => "^Debe seleccionar un tipo"
  validates_presence_of  :celular, :message => "^Debe ingresar un numero de celular"
  validates_presence_of  :direccion, :message => "^Debe ingresar una direccion"
  validates_presence_of  :fecha_nacimiento, :message => "^Debe ingresar la fecha de nacimiento"
  validates_presence_of  :numero_documento, :message => "^Debe ingresar un numero de documento de identidad"

end
