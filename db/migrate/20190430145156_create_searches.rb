class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.integer :correlative
      t.string :income_number
      t.string :income_applicant
      t.string :borrower_name
      t.string :borrower_id
      t.string :bank_name
      t.string :guarantee_number
      t.string :guarantee_type
      t.integer :value_guarantee
      t.string :currency_guarantee
      t.string :state
      t.string :bail
      t.string :detail
      t.string :bip
      t.string :devolution_number
      t.string :devolution_return
      t.string :sectorialist_devolution
      t.string :email
      t.string :technical_unit

      t.timestamps
    end
  end
end
