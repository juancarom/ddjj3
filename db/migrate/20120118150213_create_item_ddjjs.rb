class CreateItemDdjjs < ActiveRecord::Migration
  def self.up
    create_table :item_ddjjs do |t|
      t.integer :DDJJ_id
      t.integer :numeroDeItem
      t.integer :organizacion_id
      t.integer :materiaCargo_id
      t.integer :funcion_id
      t.date :FechaDeAlta
      t.integer :CantidadDeHorasSemanales
      t.integer :cargado
      t.integer :aprobado            # 0 no visto, 1 aprobado, en 2 rechazado
      t.timestamps
    end
  end

  def self.down
    drop_table :item_ddjjs
  end
end
