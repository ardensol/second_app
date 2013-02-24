class CreateCustomizations < ActiveRecord::Migration
  def change
    create_table :customizations do |t|
      t.integer :product_id
      t.string :customization

      t.timestamps
    end
  end
end
