class CreateRangoEstaturas < ActiveRecord::Migration[5.2]
  def change
    create_table :rango_estaturas do |t|
      t.string :nombre
      t.integer :min
      t.integer :max

      t.timestamps
    end
  end
end
