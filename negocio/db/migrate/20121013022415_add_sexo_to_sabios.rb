class AddSexoToSabios < ActiveRecord::Migration
  def change
    add_column :sabios, :sexo, :string
  end
end
