class CreateDdjjs < ActiveRecord::Migration
  def self.up
    create_table :ddjjs do |t|
      t.integer :agente_id
      t.integer :numero
      t.date :fechaDDJJ
      t.boolean :completa

      t.timestamps
    end
  end

  def self.down
    drop_table :ddjjs
  end
end
