class CreateTrees < ActiveRecord::Migration
  def change
    create_table :trees do |t|
      t.string :treetype
      t.string :height
      t.string :url

      t.timestamps null: false
    end
  end
end
