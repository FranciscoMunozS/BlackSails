class SearchesController < ApplicationController

  def new
    @search = Search.new
    #@guarantees = Guarantee.uniq.pluck(:guarantee_type)
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

  private

  def search_params
    params.require(:search).permit(:keywords, :correlative, :income_number, :income_applicant, :borrower_name, :borrower_id, :bank_name, :guarantee_type, :guarantee_number, :value_guarantee, :currency_guarantee, :state, :bail, :detail, :bip, :devolution_number, :devolution_return, :sectorialist_devolution, :email, :technical_unit)
  end
end
