require 'rubygems'
require 'open-uri'

module SaveFile
  uri = "https://sdw.ecb.europa.eu//quickviewexport.do?SERIES_KEY=120.EXR.D.USD.EUR.SP00.A&type=csv"
  download = open(uri)
  IO.copy_stream(download, File.join(File.dirname(__FILE__),'datafile.csv'))
end