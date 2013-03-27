class AddPriceIncreaseToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :price_increase, :boolean

  end
end
