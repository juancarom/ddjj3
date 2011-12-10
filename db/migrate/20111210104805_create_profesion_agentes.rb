class CreateProfesionAgentes < ActiveRecord::Migration
  def self.up
    create_table :profesion_agentes do |t|
      t.integer :profesion_id
      t.integer :agente_id

      t.timestamps
    end
  end

  def self.down
    drop_table :profesion_agentes
  end
end
