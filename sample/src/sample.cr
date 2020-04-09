require "sidekiq"
# This initializes the Client API with a default Redis connection to localhost:6379.
# See the Configuration page for how to point to a custom Redis location.
Sidekiq::Client.default_context = Sidekiq::Client::Context.new


# Now somewhere in your code you can create as many jobs as you want:
Sample::MyWorker.async.perform("world", 3_i64)

# A lower-level, more dynamic API is also supported:
job = Sidekiq::Job.new
job.klass = "Sample::MyWorker"
job.queue = "default"
job.args = ["world", 3_i64].to_json
client = Sidekiq::Client.new
jid = client.push(job)