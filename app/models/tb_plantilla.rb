class TbPlantilla < ActiveRecord::Base
  set_primary_key "id_plantilla"
  validates_presence_of :pl_codigo
  validates_uniqueness_of :pl_codigo
  def self.per_page
    10
  end


end
