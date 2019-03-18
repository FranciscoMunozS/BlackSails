require "application_system_test_case"

class GuaranteesTest < ApplicationSystemTestCase
  setup do
    @guarantee = guarantees(:one)
  end

  test "visiting the index" do
    visit guarantees_url
    assert_selector "h1", text: "Guarantees"
  end

  test "creating a Guarantee" do
    visit guarantees_url
    click_on "New Guarantee"

    fill_in "Bail", with: @guarantee.bail
    fill_in "Bank name", with: @guarantee.bank_name
    fill_in "Bip", with: @guarantee.bip
    fill_in "Borrower", with: @guarantee.borrower_id
    fill_in "Borrower name", with: @guarantee.borrower_name
    fill_in "Correlative", with: @guarantee.correlative
    fill_in "Currency guarantee", with: @guarantee.currency_guarantee
    fill_in "Detail", with: @guarantee.detail
    fill_in "Devolution date", with: @guarantee.devolution_date
    fill_in "Devolution number", with: @guarantee.devolution_number
    fill_in "Devolution return", with: @guarantee.devolution_return
    fill_in "Due date", with: @guarantee.due_date
    fill_in "Email", with: @guarantee.email
    fill_in "Guarantee number", with: @guarantee.guarantee_number
    fill_in "Income applicant", with: @guarantee.income_applicant
    fill_in "Income date", with: @guarantee.income_date
    fill_in "Income number", with: @guarantee.income_number
    fill_in "Observation", with: @guarantee.observation
    fill_in "Sectorialist devolution", with: @guarantee.sectorialist_devolution
    fill_in "State", with: @guarantee.state
    fill_in "Technical unit", with: @guarantee.technical_unit
    fill_in "Value guarantee", with: @guarantee.value_guarantee
    click_on "Create Guarantee"

    assert_text "Guarantee was successfully created"
    click_on "Back"
  end

  test "updating a Guarantee" do
    visit guarantees_url
    click_on "Edit", match: :first

    fill_in "Bail", with: @guarantee.bail
    fill_in "Bank name", with: @guarantee.bank_name
    fill_in "Bip", with: @guarantee.bip
    fill_in "Borrower", with: @guarantee.borrower_id
    fill_in "Borrower name", with: @guarantee.borrower_name
    fill_in "Correlative", with: @guarantee.correlative
    fill_in "Currency guarantee", with: @guarantee.currency_guarantee
    fill_in "Detail", with: @guarantee.detail
    fill_in "Devolution date", with: @guarantee.devolution_date
    fill_in "Devolution number", with: @guarantee.devolution_number
    fill_in "Devolution return", with: @guarantee.devolution_return
    fill_in "Due date", with: @guarantee.due_date
    fill_in "Email", with: @guarantee.email
    fill_in "Guarantee number", with: @guarantee.guarantee_number
    fill_in "Income applicant", with: @guarantee.income_applicant
    fill_in "Income date", with: @guarantee.income_date
    fill_in "Income number", with: @guarantee.income_number
    fill_in "Observation", with: @guarantee.observation
    fill_in "Sectorialist devolution", with: @guarantee.sectorialist_devolution
    fill_in "State", with: @guarantee.state
    fill_in "Technical unit", with: @guarantee.technical_unit
    fill_in "Value guarantee", with: @guarantee.value_guarantee
    click_on "Update Guarantee"

    assert_text "Guarantee was successfully updated"
    click_on "Back"
  end

  test "destroying a Guarantee" do
    visit guarantees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Guarantee was successfully destroyed"
  end
end
