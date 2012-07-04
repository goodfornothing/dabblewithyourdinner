class Feedback < ActiveRecord::Migration
  def up
    create_table :registrations do |t|
      t.string :email
      t.string :idea
    end
  end

  def down
    drop_table :registrations
  end
end
