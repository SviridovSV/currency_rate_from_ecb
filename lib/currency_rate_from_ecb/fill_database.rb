require "rubygems"
require 'csv'
require 'open-uri'
require 'active_record'

require_relative 'savefile.rb'
require_relative 'config/data_connection.rb'

module FillDatabase
  class CurrencyRate < ActiveRecord::Base
  end

  a = CSV.read(File.join(File.dirname(__FILE__),'datafile.csv'))
  CurrencyRate.create do |currency_rate|
    a.each do |val|
      currency_rate.date = val.first
      currency_rate.rate = val.last.to_f
    end
  end
end


