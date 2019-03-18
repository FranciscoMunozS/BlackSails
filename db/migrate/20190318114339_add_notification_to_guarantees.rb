class AddNotificationToGuarantees < ActiveRecord::Migration[5.2]
  def change
    add_column :guarantees, :notification, :integer
  end
end
