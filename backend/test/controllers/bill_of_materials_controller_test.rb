require 'test_helper'

class BillOfMaterialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bill_of_material = bill_of_materials(:one)
  end

  test "should get index" do
    get bill_of_materials_url, as: :json
    assert_response :success
  end

  test "should create bill_of_material" do
    assert_difference('BillOfMaterial.count') do
      post bill_of_materials_url, params: { bill_of_material: { alternate: @bill_of_material.alternate, atp: @bill_of_material.atp, basis: @bill_of_material.basis, buyer: @bill_of_material.buyer, comments: @bill_of_material.comments, costed: @bill_of_material.costed, cumulative_manufacuturing: @bill_of_material.cumulative_manufacuturing, cumulative_total: @bill_of_material.cumulative_total, description: @bill_of_material.description, disabled: @bill_of_material.disabled, eco: @bill_of_material.eco, effectivity_control: @bill_of_material.effectivity_control, engineering_bill: @bill_of_material.engineering_bill, engineering_item: @bill_of_material.engineering_item, extended_cost: @bill_of_material.extended_cost, extended_quantity: @bill_of_material.extended_quantity, from: @bill_of_material.from, from_date: @bill_of_material.from_date, implemented: @bill_of_material.implemented, include_on_ship_docs: @bill_of_material.include_on_ship_docs, item: @bill_of_material.item, item_seq: @bill_of_material.item_seq, level: @bill_of_material.level, locator: @bill_of_material.locator, make_buy: @bill_of_material.make_buy, manufacturing: @bill_of_material.manufacturing, max_qty: @bill_of_material.max_qty, min_qty: @bill_of_material.min_qty, mutually_exclusive: @bill_of_material.mutually_exclusive, offset: @bill_of_material.offset, op_seq: @bill_of_material.op_seq, operation_seq: @bill_of_material.operation_seq, optional: @bill_of_material.optional, planner: @bill_of_material.planner, planning: @bill_of_material.planning, quantity: @bill_of_material.quantity, required_for_revenue: @bill_of_material.required_for_revenue, required_to_ship: @bill_of_material.required_to_ship, revision: @bill_of_material.revision, sales_order_basis: @bill_of_material.sales_order_basis, shippable: @bill_of_material.shippable, status: @bill_of_material.status, subinventory: @bill_of_material.subinventory, supply_type: @bill_of_material.supply_type, to: @bill_of_material.to, to_date: @bill_of_material.to_date, type: @bill_of_material.type, unit_cost: @bill_of_material.unit_cost, uom: @bill_of_material.uom, yield: @bill_of_material.yield } }, as: :json
    end

    assert_response 201
  end

  test "should show bill_of_material" do
    get bill_of_material_url(@bill_of_material), as: :json
    assert_response :success
  end

  test "should update bill_of_material" do
    patch bill_of_material_url(@bill_of_material), params: { bill_of_material: { alternate: @bill_of_material.alternate, atp: @bill_of_material.atp, basis: @bill_of_material.basis, buyer: @bill_of_material.buyer, comments: @bill_of_material.comments, costed: @bill_of_material.costed, cumulative_manufacuturing: @bill_of_material.cumulative_manufacuturing, cumulative_total: @bill_of_material.cumulative_total, description: @bill_of_material.description, disabled: @bill_of_material.disabled, eco: @bill_of_material.eco, effectivity_control: @bill_of_material.effectivity_control, engineering_bill: @bill_of_material.engineering_bill, engineering_item: @bill_of_material.engineering_item, extended_cost: @bill_of_material.extended_cost, extended_quantity: @bill_of_material.extended_quantity, from: @bill_of_material.from, from_date: @bill_of_material.from_date, implemented: @bill_of_material.implemented, include_on_ship_docs: @bill_of_material.include_on_ship_docs, item: @bill_of_material.item, item_seq: @bill_of_material.item_seq, level: @bill_of_material.level, locator: @bill_of_material.locator, make_buy: @bill_of_material.make_buy, manufacturing: @bill_of_material.manufacturing, max_qty: @bill_of_material.max_qty, min_qty: @bill_of_material.min_qty, mutually_exclusive: @bill_of_material.mutually_exclusive, offset: @bill_of_material.offset, op_seq: @bill_of_material.op_seq, operation_seq: @bill_of_material.operation_seq, optional: @bill_of_material.optional, planner: @bill_of_material.planner, planning: @bill_of_material.planning, quantity: @bill_of_material.quantity, required_for_revenue: @bill_of_material.required_for_revenue, required_to_ship: @bill_of_material.required_to_ship, revision: @bill_of_material.revision, sales_order_basis: @bill_of_material.sales_order_basis, shippable: @bill_of_material.shippable, status: @bill_of_material.status, subinventory: @bill_of_material.subinventory, supply_type: @bill_of_material.supply_type, to: @bill_of_material.to, to_date: @bill_of_material.to_date, type: @bill_of_material.type, unit_cost: @bill_of_material.unit_cost, uom: @bill_of_material.uom, yield: @bill_of_material.yield } }, as: :json
    assert_response 200
  end

  test "should destroy bill_of_material" do
    assert_difference('BillOfMaterial.count', -1) do
      delete bill_of_material_url(@bill_of_material), as: :json
    end

    assert_response 204
  end
end
