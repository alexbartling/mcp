class AddDateToTicket < ActiveRecord::Migration
  def change
    add_column :tickets, :date, :date

  end
end
