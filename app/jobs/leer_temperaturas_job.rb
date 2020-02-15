class LeerTemperaturasJob < ApplicationJob
  queue_as :default

  require'net/http'

  def perform(temperatura)
    # Do something later
    temperatura.almacenarTemperatura
  end
end
