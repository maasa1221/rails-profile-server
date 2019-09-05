class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :email
      t.string :password
      t.text :name
      t.binary :sex
      t.integer :height
      t.integer :age

      t.timestamps
    end
  end
end
