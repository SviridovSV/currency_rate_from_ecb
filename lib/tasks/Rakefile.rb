require_relative 'lib/currency_rate_from_ecb/config/data_connection.rb'

namespace :db do
  desc "Migrate the database"
  task :migrate do
    ActiveRecord::Migrator.migrate('lib/currency_rate_from_ecb/db/migrate', ENV["VERSION"] ? ENV["VERSION"].to_i : nil )
  end
end
