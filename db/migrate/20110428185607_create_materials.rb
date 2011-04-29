class CreateMaterials < ActiveRecord::Migration
  def self.up
    create_table :materials do |t|
      t.string :name
      t.text :description
      t.string :material_type

      t.timestamps
    end
  end

  def self.down
    drop_table :materials
  end
end
