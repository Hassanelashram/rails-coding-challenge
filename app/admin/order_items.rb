# frozen_string_literal: true

ActiveAdmin.register OrderItem do
  permit_params :product_name, :order_id

  index do
    column :product_name
    column :order_id
    actions
  end

  show do
    attributes_table title: "Details" do
      row :product_name
      row :order_id
    end
  end

  form do |f|
    f.inputs do
      f.input :product_name
      f.input :order, as: :select, collection: Order.all.map {|o| [o.id, o.id] }, prompt: "Which order does it belong to"
    end
    f.actions
  end

end
