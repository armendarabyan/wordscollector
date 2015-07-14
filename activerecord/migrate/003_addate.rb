class Addate < ActiveRecord::Migration
  def change
    add_column :words, :created_at, :datetime
  end
end
