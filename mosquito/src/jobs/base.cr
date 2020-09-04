require "mosquito"
class PutsJob < Mosquito::QueuedJob
  params message : String

  def perform
    puts message
  end
end
