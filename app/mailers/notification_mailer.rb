class NotificationMailer < ApplicationMailer
  default from: "soporte@goredelosrios.cl"

  def sample_email(guarantee)
    @guarantee = guarantee
    mail(to: @guarantee.email, subject: 'Correo de prueba')
  end
end
