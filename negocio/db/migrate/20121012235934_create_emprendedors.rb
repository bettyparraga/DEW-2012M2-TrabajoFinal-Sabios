class CreateEmprendedors < ActiveRecord::Migration
  def change
    create_table :emprendedors do |t|
      t.string :nombres
      t.string :paterno
      t.string :materno
      t.string :sexo
      t.string :tipo_docum_identidad
      t.string :celular
      t.string :direccion
      t.date :fecha_nacimiento

      t.timestamps
    end
  end
end
