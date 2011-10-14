class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.timestamp :start_at
      t.date :finish_on

      t.timestamps
    end
  end
end
