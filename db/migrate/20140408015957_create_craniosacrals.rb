class CreateCraniosacrals < ActiveRecord::Migration
  def change
    create_table :craniosacrals do |t|

      t.timestamps
    end
  end
end
