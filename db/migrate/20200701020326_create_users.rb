class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :userpic
      t.string :Company
      t.string :name
      t.string :email
      t.integer :contact
      t.integer :avgqueuetime
      t.array :queue

      t.timestamps
    end
  end
end
