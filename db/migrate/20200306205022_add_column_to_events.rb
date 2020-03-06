class AddColumnToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :twitch_id, :string
  end
end
