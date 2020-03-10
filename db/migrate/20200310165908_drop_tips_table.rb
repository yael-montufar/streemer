class DropTipsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :tips
  end
end
