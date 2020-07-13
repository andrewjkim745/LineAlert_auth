class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :company_pic
      t.string :company_password
      t.string :company_email
      t.integer :company_number
      t.text :company_queue, array: true, default: []
      t.integer :company_avgwait
      

      t.timestamps
    end
  end
end
