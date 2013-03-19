class CreateTransactionTable < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.decimal :amount
      t.string :from
      t.string :to
      t.string :dt
      t.integer :user_id
      t.timestamps
    end
  end
end
