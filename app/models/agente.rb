class Agente < ActiveRecord::Base
  #-------------controles relacionales--------
  
  #-------------validaciones------------------
  validates :dni, :presence => true, :uniqueness => true,  :numericality => true, :length =>  { :within => 100000..100000000 }
  
  validates :nombre, :presence => true
  validates :apellidos, :presence => true
end
