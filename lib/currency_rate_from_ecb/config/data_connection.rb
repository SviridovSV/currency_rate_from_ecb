require 'active_record'
module DataConnection

  ActiveRecord::Base.establish_connection(
    adapter: "sqlite3",
    database: "db/database.sqlite3"
  )
end
