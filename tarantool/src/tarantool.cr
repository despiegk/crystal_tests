require "tarantool"

db = Tarantool::Connection.new("localhost", 3301) # Initiate the connection
# db.parse_schema # Save current box schema to db instance
# db.insert(:examples, {1, "hello"}) # Insert "hello" tuple
# db.update(:examples, :primary, {1}, {"=", 1, "hello world"}) # Replace "hello" with "hello world"
# db.select(:examples, :name, {"hello world"}).body.data # => [[1, "hello world"]]

32.times do
    spawn do
      db.ping # All 32 pings are executed concurrently
    end
  end