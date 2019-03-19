class SendEmailJob < ApplicationJob
  queue_as :default

  def perform(guarantee)
    @guarantee = guarantee
    NotificationMailer.sample_email(@guarantee).deliver_later
  end
end
