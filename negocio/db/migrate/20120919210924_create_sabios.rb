class CreateSabios < ActiveRecord::Migration
  def change
    create_table :sabios do |t|
      t.string :name

      t.timestamps
    end
  end
end
