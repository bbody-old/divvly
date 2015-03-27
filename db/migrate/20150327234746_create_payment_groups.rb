class CreatePaymentGroups < ActiveRecord::Migration
  def change
    create_table :payment_groups do |t|
      t.references :group, index: true

      t.timestamps
    end
  end
end
