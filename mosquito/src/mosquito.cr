require "mosquito"
require "./jobs/*"

PutsJob.new(message: "ohai background job").enqueue

