class CreateAgentes < ActiveRecord::Migration
  def self.up
    create_table :agentes do |t|
      t.integer :dni
      t.string :nombre
      t.string :apellido
      t.date :fecha_de_nacimiento
      t.string :cuil
      t.integer :matricula_numero
      t.string :email
      t.integer :numero_de_celular
      t.integer :numero_de_telefono_fijo
      t.integer :domicilio_id

      t.timestamps
    end
  end

  def self.down
    drop_table :agentes
  end
end
