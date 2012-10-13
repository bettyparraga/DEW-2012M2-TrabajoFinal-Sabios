class CreateSabios < ActiveRecord::Migration
  def change
    create_table :sabios do |t|
      t.string :nombres
      t.string :paterno
      t.string :materno
      t.string :tipo_docum_identidad
      t.string :celular
      t.string :direccion
      t.date   :fecha_nacimiento
      t.string :apelativo
      t.text :resumen_biografico
      t.string :sitio_web
      t.string :banco_cta_bancaria
      t.string :numero_cta_bancaria

      t.timestamps
    end
  end
end
