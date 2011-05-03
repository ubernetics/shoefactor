class Material < ActiveRecord::Base
validates_presence_of :material_type
validates_uniqueness_of :name
end
