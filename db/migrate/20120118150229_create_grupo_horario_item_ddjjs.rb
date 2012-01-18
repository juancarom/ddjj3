class CreateGrupoHorarioItemDdjjs < ActiveRecord::Migration
  def self.up
    create_table :grupo_horario_item_ddjjs do |t|
      t.integer :itemDDJJ_id
      t.integer :dia
      t.time :HorarioInicio
      t.time :HorarioFin

      t.timestamps
    end
  end

  def self.down
    drop_table :grupo_horario_item_ddjjs
  end
end
