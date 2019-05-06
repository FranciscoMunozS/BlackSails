class GuaranteesController < ApplicationController
  before_action :set_guarantee, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /guarantees
  # GET /guarantees.json
  def index
    @guarantees = Guarantee.all
    @excel = Guarantee.all
    
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  # GET /guarantees/1
  # GET /guarantees/1.json
  def show
  end

  # GET /guarantees/new
  def new
    @guarantee = Guarantee.new
  end

  # GET /guarantees/1/edit
  def edit
  end

  # POST /guarantees
  # POST /guarantees.json
  def create
    @guarantee = Guarantee.new(guarantee_params)

    respond_to do |format|
      if @guarantee.save
        format.html { redirect_to root_path, notice: 'Registro creado existosamente.' }
        format.json { render :show, status: :created, location: @guarantee }
      else
        format.html { render :new }
        format.json { render json: @guarantee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guarantees/1
  # PATCH/PUT /guarantees/1.json
  def update
    respond_to do |format|
      if @guarantee.update(guarantee_params)

        #SendEmailJob.set(wait: @guarantee.notification.days).perform_later(@guarantee)

        format.html { redirect_to root_path, notice: 'Registro actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @guarantee }
      else
        format.html { render :edit }
        format.json { render json: @guarantee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guarantees/1
  # DELETE /guarantees/1.json
  def destroy
    @guarantee.destroy
    respond_to do |format|
      format.html { redirect_to guarantees_url, notice: 'Registro eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guarantee
      @guarantee = Guarantee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guarantee_params
      params.require(:guarantee).permit(:correlative, :income_number, :income_date, :income_applicant, :borrower_name, :borrower_id, :bank_name, :guarantee_type, :guarantee_number, :value_guarantee, :currency_guarantee, :due_date, :state, :bail, :detail, :bip, :devolution_number, :devolution_date, :devolution_return, :sectorialist_devolution, :email, :technical_unit, :observation, :notification_date, :notification)
    end
end
