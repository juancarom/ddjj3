class CreateMateriaCargos < ActiveRecord::Migration
  def self.up
    create_table :materia_cargos do |t|
      t.string :codigo
      t.string :nombre
      t.integer :cant_horas_semanales

      t.timestamps
    end
  end

  def self.down
    drop_table :materia_cargos
  end
end
