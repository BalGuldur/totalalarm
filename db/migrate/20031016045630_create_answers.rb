class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :descr
      t.boolean :enable

      t.timestamps
    end
  end
end
