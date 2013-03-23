class AddPriceAndFeeToTicket < ActiveRecord::Migration
  def change
    add_column :tickets, :price, :float

    add_column :tickets, :fee, :float

  end
end
