class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string  :name, null: false
      #t.integer :payment_id , null: false
      t.integer :status_id
      t.integer :group_id
      t.integer :product_id
      t.integer :pricing_id
      t.text    :notes
      t.timestamps null: false
    end
  end
end
