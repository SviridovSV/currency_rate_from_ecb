class CreateCurrencyRates < ActiveRecord::Migration
  def self.up
    create_table :currency_rates do |t|
      t.string :date
      t.float :rate
    end
  end

  def self.down
    drop_table :currency_rates
  end
end