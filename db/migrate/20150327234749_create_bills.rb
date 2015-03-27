class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :name
      t.text :description
      t.string :image
      t.float :cost
      t.references :payment_group, index: true
      t.references :user, index: true
      t.references :group, index: true
      t.boolean :paid

      t.timestamps
    end
  end
end
