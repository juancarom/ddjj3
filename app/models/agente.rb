class Agente < ActiveRecord::Base
  #-------------controles relacionales--------
  has_many :profesion_agente
  #-------------validaciones------------------
  validates :dni, :presence => true, :uniqueness => true,  :numericality => true
  
  validates :nombre, :presence => true
  validates :apellido, :presence => true
end
