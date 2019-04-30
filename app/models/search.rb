class Search < ApplicationRecord
  def search_guarantees

    guarantees = Guarantee.all

    guarantees = guarantees.where(["guarantee_type LIKE ?", "%#{keywords}%"]) if keywords.present?
    guarantees = guarantees.where(["guarantee_number LIKE ?", guarantee_number]) if guarantee_number.present?
    guarantees = guarantees.where(["borrower_name LIKE ?", borrower_name]) if borrower_name.present?
    guarantees = guarantees.where(["borrower_id LIKE ?", borrower_id]) if borrower_id.present?
    guarantees = guarantees.where(["value_guarantee LIKE ?", value_guarantee]) if value_guarantee.present?
    guarantees = guarantees.where(["detail LIKE ?", detail]) if detail.present?
    guarantees = guarantees.where(["sectorialist_devolution LIKE ?", sectorialist_devolution]) if sectorialist_devolution.present?


    return guarantees
  end
end
