class CreateAlarms < ActiveRecord::Migration
  def change
    create_table :alarms do |t|
      t.string :descr
      t.string :creator
      t.string :disabler
      t.boolean :enable

      t.timestamps
    end
  end
end
