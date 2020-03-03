class CreatePerformerProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :performer_profiles do |t|
      t.references :user, foreign_key: true
      t.string :stage_name
      t.string :bio

      t.timestamps
    end
  end
end
