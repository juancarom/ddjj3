class CreateDomicilios < ActiveRecord::Migration
  def self.up
    create_table :domicilios do |t|
      t.integer :localidad_id
      t.string :calle
      t.integer :numero
      t.integer :piso
      t.string :dpto
      t.text :observaciones

      t.timestamps
    end
  end

  def self.down
    drop_table :domicilios
  end
end
