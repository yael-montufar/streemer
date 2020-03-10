class CreateTipsAsPayable < ActiveRecord::Migration[5.2]
  def change
    create_table :tips do |t|
      t.string :state
      t.monetize :amount, currency: { present: false }
      t.string :checkout_session_id # For stripe
      t.references :user # Who's tipping
      t.references :performer # Who's being tipped
    end
  end
end
