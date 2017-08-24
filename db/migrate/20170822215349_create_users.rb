class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :grade
      t.string :school_name
      t.string :email
      t.string :avatar
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
