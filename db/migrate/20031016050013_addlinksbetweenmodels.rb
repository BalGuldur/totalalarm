class Addlinksbetweenmodels < ActiveRecord::Migration
  def up
		create_table :alarms_answers do |t|
			t.integer :alarm_id
			t.integer :answer_id

			t.timestamps
		end

		add_column :answers, :granswer_id, :integer
  end

  def down
		drop_table :alarms_answers
		remove_column :answers, :granswer_id
  end
end
