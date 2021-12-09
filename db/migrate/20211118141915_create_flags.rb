class CreateFlags < ActiveRecord::Migration[5.2]
  def change
    create_table :flags do |t|
      t.string :state
      t.string :acronym
      t.string :capital
      t.string :url_img

      t.timestamps
    end
  end
end
