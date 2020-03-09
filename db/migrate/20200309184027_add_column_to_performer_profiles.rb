class AddColumnToPerformerProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :performer_profiles, :photo, :string
  end
end
