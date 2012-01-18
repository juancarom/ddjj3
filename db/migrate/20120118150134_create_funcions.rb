class CreateFuncions < ActiveRecord::Migration
  def self.up
    create_table :funcions do |t|
      t.string :nombre

      t.timestamps
    end
  end

  def self.down
    drop_table :funcions
  end
end
