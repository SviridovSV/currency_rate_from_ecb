require 'yaml'
require 'active_record'
module DataConnection

  dbconfig = YAML.load_file('config/database.yml')

  ActiveRecord::Base.establish_connection(dbconfig)
end
