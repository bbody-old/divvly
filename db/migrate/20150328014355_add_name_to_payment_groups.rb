class AddNameToPaymentGroups < ActiveRecord::Migration
  def change

  	add_column :payment_groups, :name, :string
  end
end
