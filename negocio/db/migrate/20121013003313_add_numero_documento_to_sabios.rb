class AddNumeroDocumentoToSabios < ActiveRecord::Migration
  def change
    add_column :sabios, :numero_documento, :string
  end
end
