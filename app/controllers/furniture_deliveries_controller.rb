class FurnitureDeliveriesController < ApplicationController
  before_action :set_furniture_delivery, only: %i[ show edit update destroy ]
  before_action :set_furniture_options, only: %i[ new show edit update destroy ]

  # GET /furniture_deliveries or /furniture_deliveries.json
  def index
    @furniture_deliveries = FurnitureDelivery.all
  end

  # GET /furniture_deliveries/1 or /furniture_deliveries/1.json
  def show
  end

  # GET /furniture_deliveries/new
  def new
    @furniture_delivery = FurnitureDelivery.new
  end

  # GET /furniture_deliveries/1/edit
  def edit
  end

  # POST /furniture_deliveries or /furniture_deliveries.json
  def create
    @furniture_delivery = FurnitureDelivery.new(furniture_delivery_params)

    respond_to do |format|
      if @furniture_delivery.save
        format.html { redirect_to furniture_delivery_url(@furniture_delivery), notice: "Furniture delivery was successfully created." }
        format.json { render :show, status: :created, location: @furniture_delivery }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @furniture_delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /furniture_deliveries/1 or /furniture_deliveries/1.json
  def update
    respond_to do |format|
      if @furniture_delivery.update(furniture_delivery_params)
        format.html { redirect_to furniture_delivery_url(@furniture_delivery), notice: "Furniture delivery was successfully updated." }
        format.json { render :show, status: :ok, location: @furniture_delivery }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @furniture_delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /furniture_deliveries/1 or /furniture_deliveries/1.json
  def destroy
    @furniture_delivery.destroy

    respond_to do |format|
      format.html { redirect_to furniture_deliveries_url, notice: "Furniture delivery was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_furniture_delivery
      @furniture_delivery = FurnitureDelivery.find(params[:id])
    end

    def set_furniture_options
      @furniture_options = Furniture.options_for_select
    end

    # Only allow a list of trusted parameters through.
    def furniture_delivery_params
      params.require(:furniture_delivery).permit(:furniture_id, :quantity, :cost, :address, :product_send)
    end
end
