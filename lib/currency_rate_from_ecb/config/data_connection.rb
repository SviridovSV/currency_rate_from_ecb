require 'active_record'
module DataConnection

  ActiveRecord::Base.establish_connection(
    adapter: "sqlite3",
    database: "currency_rate_from_ecb/db/database.sqlite3"
  )
end
