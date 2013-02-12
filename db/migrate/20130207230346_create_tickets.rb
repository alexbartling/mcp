class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :plate_id
      t.string :citation

      t.timestamps
    end
  end
end
