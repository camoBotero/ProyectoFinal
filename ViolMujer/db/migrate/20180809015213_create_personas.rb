class CreatePersonas < ActiveRecord::Migration[5.2]
  def change
    create_table :personas do |t|
      t.string :tipo_id
      t.string :numero_id
      t.string :nombres
      t.string :apellido
      t.string :telefono
      t.string :correo
      t.integer :id_rango_edad
      t.boolean :vive_localidad

      t.timestamps
    end
  end
end
