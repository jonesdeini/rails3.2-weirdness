class AddIphoneToBro < ActiveRecord::Migration
  def change
    add_column :bros, :iphone, :boolean
  end
end
