require_relative 'save_file.rb'
require_relative 'config/data_connection.rb'
require_relative 'currency_rate_base.rb'

module FillDatabase
  
  def get_data_from_file
    begin
      data_array = CSV.read(File.join(File.dirname(__FILE__),'datafile.csv'), headers: true)
    rescue
      puts "Something went wrong.Error!"
    end
    CurrencyRateBase.create do |currency_rate|
      data_array.each do |val|
        if val.last.kind_of?(Numeric)
          currency_rate.date = val.first
          currency_rate.rate = val.last.to_f
        end 
      end
    end
  end
end
