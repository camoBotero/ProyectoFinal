class CreateAgresors < ActiveRecord::Migration[5.2]
  def change
    create_table :agresors do |t|
      t.string :sexo
      t.boolean :conocido
      t.integer :id_rango_edad
      t.integer :id_etnia
      t.integer :id_rango_estatura
      t.integer :id_complexion_fisica
      t.text :senales_particulares
      t.integer :id_denuncia

      t.timestamps
    end
  end
end
