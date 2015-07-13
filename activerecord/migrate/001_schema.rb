class Schema < ActiveRecord::Migration
  def change
    create_table :words, force: true do |t|
      t.string :name
      t.integer :status
    end
  end
end
