class CreateProfesions < ActiveRecord::Migration
  def self.up
    create_table :profesions do |t|
      t.string :nombre

      t.timestamps
    end
  end

  def self.down
    drop_table :profesions
  end
end
