class CreateDenuncia < ActiveRecord::Migration[5.2]
  def change
    create_table :denuncia do |t|
      t.integer :id_denunciante
      t.boolean :esvictima
      t.integer :id_victima
      t.date :fecha_hora
      t.float :latitud
      t.float :longitud
      t.text :descripcion
      t.integer :id_tipo_agresion

      t.timestamps
    end
  end
end
