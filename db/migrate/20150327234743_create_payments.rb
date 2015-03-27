class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :user, index: true
      t.references :bill, index: true
      t.string :method
      t.boolean :paid

      t.timestamps
    end
  end
end
