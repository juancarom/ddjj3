class Agente < ActiveRecord::Base
  #-------------controles relacionales--------
  
  #-------------validaciones------------------
  validates :dni, :presence => true, :uniqueness => true,  :numericality => true
  
  validates :nombre, :presence => true
  validates :apellido, :presence => true
end
