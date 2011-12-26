class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.datetime :last_login
      t.datetime :created
      t.boolean :active
      t.boolean :is_staff

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
