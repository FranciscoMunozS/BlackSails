class Guarantee < ApplicationRecord
  extend Enumerize

  before_save :calculate_days

  auto_increment :correlative

  enumerize :bank_name, in: [:ESTADO, :SANTANDER, :BBVA, :CORPBANCA, :FALABELLA, :RIPLEY, :CHILE, :BICE, :SCOTIABANK, :CREDITO_E_INVERSIONES,
                            :EDWARDS, :INTERNACIONAL, :ITAU, :SECURITY, :PROAVAL, :HDI, :CONSORCIO, :FIRST_AVAL, :NOTARIA,
                            :MASAVAL, :BCI, :-]

  enumerize :state, in: [:DEVUELTA, :VENCIDA, :VIGENTE, :-], default: :VIGENTE

  enumerize :currency_guarantee, in: [:UF, :CLP, :EUR, :US, :-]

  enumerize :devolution_return, in: [:DESPACHO, :DESPACHO_CORRESPONDENCIA, :RETIRO_PERSONAL, :-]

  enumerize :guarantee_type, in: [:GARANTIA, :VALE_VISTA, :LETRA_CAMBIO, :CERTIFICADO_PRORROGA, :CERTIFICADO_FIANZA, :POLIZA_GARANTIA, :PAGARE, :CERTIFICADO]

  def calculate_days
    if due_date.present?
      self.notification = (due_date - income_date).to_i
      self.notification = (notification - 30)
    end
  end

end
