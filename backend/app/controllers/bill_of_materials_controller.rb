class BillOfMaterialsController < ApplicationController
  before_action :set_bill_of_material, only: [:show, :update, :destroy]

  # GET /bill_of_materials
  def index
    @bill_of_materials = BillOfMaterial.all

    render json: @bill_of_materials
  end

  # GET /bill_of_materials/1
  def show
    render json: @bill_of_material
  end

  # POST /bill_of_materials
  def create
    @bill_of_material = BillOfMaterial.new(bill_of_material_params)

    if @bill_of_material.save
      render json: @bill_of_material, status: :created, location: @bill_of_material
    else
      render json: @bill_of_material.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bill_of_materials/1
  def update
    if @bill_of_material.update(bill_of_material_params)
      render json: @bill_of_material
    else
      render json: @bill_of_material.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bill_of_materials/1
  def destroy
    @bill_of_material.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill_of_material
      @bill_of_material = BillOfMaterial.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bill_of_material_params
      params.require(:bill_of_material).permit(:item, :level, :description, :planner, :buyer, :make_buy, :status, :revision, :type, :engineering_item, :item_seq, :op_seq, :alternate, :engineering_bill, :comments, :uom, :basis, :quantity, :planning, :yield, :extended_quantity, :effectivity_control, :from, :to, :from_date, :to_date, :disabled, :implemented, :eco, :supply_type, :subinventory, :locator, :costed, :unit_cost, :extended_quantity, :extended_cost, :operation_seq, :manufacturing, :offset, :cumulative_manufacuturing, :cumulative_total, :optional, :mutually_exclusive, :atp, :min_qty, :max_qty, :sales_order_basis, :shippable, :include_on_ship_docs, :required_to_ship, :required_for_revenue)
    end
end
