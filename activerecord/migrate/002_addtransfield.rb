class Addtransfield < ActiveRecord::Migration
  def change
    add_column :words, :translated, :string
  end
end
