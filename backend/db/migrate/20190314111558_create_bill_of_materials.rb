class CreateBillOfMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :bill_of_materials do |t|
      t.string :item
      t.string :level
      t.string :description
      t.string :planner
      t.string :buyer
      t.string :make_buy
      t.string :status
      t.string :revision
      t.string :type
      t.string :engineering_item
      t.string :item_seq
      t.string :op_seq
      t.string :alternate
      t.string :engineering_bill
      t.string :comments
      t.string :uom
      t.string :basis
      t.string :quantity
      t.string :planning
      t.string :yield
      t.string :extended_quantity
      t.string :effectivity_control
      t.string :from
      t.string :to
      t.string :from_date
      t.string :to_date
      t.string :disabled
      t.string :implemented
      t.string :eco
      t.string :supply_type
      t.string :subinventory
      t.string :locator
      t.string :costed
      t.string :unit_cost
      t.string :extended_quantity
      t.string :extended_cost
      t.string :operation_seq
      t.string :manufacturing
      t.string :offset
      t.string :cumulative_manufacuturing
      t.string :cumulative_total
      t.string :optional
      t.string :mutually_exclusive
      t.string :atp
      t.string :min_qty
      t.string :max_qty
      t.string :sales_order_basis
      t.string :shippable
      t.string :include_on_ship_docs
      t.string :required_to_ship
      t.string :required_for_revenue

      t.timestamps
    end
  end
end
