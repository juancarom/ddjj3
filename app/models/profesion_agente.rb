class ProfesionAgente < ActiveRecord::Base
  #supuestamente comprueba que sea unico el par
  validates :agente_id, :uniqueness => {:scope => :profesion_id}
  #validaciones de existencias
  validates :agente_id, :presence => true
  validates :profesion_id, :presence => true 
  #para establecer la relacion, desde la consola 'rails console' funca
  belongs_to :agente
  belongs_to :profesion
end
