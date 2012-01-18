class CreateOrganizacions < ActiveRecord::Migration
  def self.up
    create_table :organizacions do |t|
      t.integer :numero
      t.string :nombre
      t.integer :domicilio_id

      t.timestamps
    end
  end

  def self.down
    drop_table :organizacions
  end
end
