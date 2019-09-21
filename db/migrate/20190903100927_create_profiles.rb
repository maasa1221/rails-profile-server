class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :email
      t.string :password
      t.text :name
      t.text :sex
      t.integer :height
      t.integer :age
      t.binary :my_photo_bool
      
      t.timestamps
    end
  end
end
