class CreateProduct2s < ActiveRecord::Migration[6.0]
  def change
    create_table :product2s do |t|
      t.text :name

      t.timestamps
    end
  end
end
