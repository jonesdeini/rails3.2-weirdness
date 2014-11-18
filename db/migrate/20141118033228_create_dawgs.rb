class CreateDawgs < ActiveRecord::Migration
  def change
    create_table :dawgs do |t|
      t.string :where_you_at

      t.timestamps
    end
  end
end
