require 'rubygems'
require 'open-uri'

module SaveFile
  def save_file_from_site
    uri = "https://sdw.ecb.europa.eu//quickviewexport.do?SERIES_KEY=120.EXR.D.USD.EUR.SP00.A&type=csv"
    begin
      download = open(uri)
      IO.copy_stream(download, File.join(File.dirname(__FILE__),'datafile.csv'))
    end
    rescue
      puts "Something went wrong. Error!"
    end
  end

end