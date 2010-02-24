class CreateTbPlantillas < ActiveRecord::Migration
  def self.up
    create_table :tb_plantillas do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :tb_plantillas
  end
end
