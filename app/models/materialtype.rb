class Materialtype < ActiveRecord::Base
  number=0
  MAT_TYPES=[]
       Materialtype.all.each do |material| 
   
       MAT_TYPES[number]=material.name
       number=number+1
  
       end  
end
