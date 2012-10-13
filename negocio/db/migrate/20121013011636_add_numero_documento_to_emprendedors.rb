class AddNumeroDocumentoToEmprendedors < ActiveRecord::Migration
  def change
    add_column :emprendedors, :numero_documento, :string
  end
end
