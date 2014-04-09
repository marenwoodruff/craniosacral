class AddTherapistToCraniosacral < ActiveRecord::Migration
  def change
    add_column :craniosacrals, :name, :string
    add_column :craniosacrals, :address, :string
  end
end
