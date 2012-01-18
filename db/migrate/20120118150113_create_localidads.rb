class CreateLocalidads < ActiveRecord::Migration
  def self.up
    create_table :localidads do |t|
      t.integer :provincia_id
      t.string :nombre
      t.string :codpos

      t.timestamps
    end
  end

  def self.down
    drop_table :localidads
  end
end
