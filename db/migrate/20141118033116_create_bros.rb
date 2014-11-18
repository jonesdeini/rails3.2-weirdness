class CreateBros < ActiveRecord::Migration
  def change
    create_table :bros do |t|
      t.boolean :cool_story

      t.timestamps
    end
  end
end
