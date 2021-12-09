class AddRegionToFlags < ActiveRecord::Migration[5.2]
  def change
    add_reference :flags, :region, foreign_key: true #migração standAlone
  end
end

