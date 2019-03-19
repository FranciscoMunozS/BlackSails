class ChangeUpdatedAtToDate < ActiveRecord::Migration[5.2]
  def change
    change_table :guarantees do |t|
      t.change :updated_at, :date
    end
  end
end
