require_relative 'fill_database.rb'

class Exchanger

  def self.exchange(dollar, date)
    return 'Both parameters must be set' if ( dollar.nil? || date.nil? )
    return  'Date must be array' unless date.kind_of?(Array)
    arr = date.map do |val|  
      dollar * CurrencyRateBase.find_by_date(val.to_s).rate 
    end
    arr
  end

end