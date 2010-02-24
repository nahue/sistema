class TbPlantilla < ActiveRecord::Base
  set_primary_key "id_plantilla"
  def self.per_page
    10
  end


end
