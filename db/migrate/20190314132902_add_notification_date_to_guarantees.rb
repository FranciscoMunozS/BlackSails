class AddNotificationDateToGuarantees < ActiveRecord::Migration[5.2]
  def change
    add_column :guarantees, :notification_date, :date
  end
end
