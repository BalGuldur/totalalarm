class CreateGranswers < ActiveRecord::Migration
  def change
    create_table :granswers do |t|
      t.string :name
      t.string :descr
      t.boolean :enable

      t.timestamps
    end
  end
end
