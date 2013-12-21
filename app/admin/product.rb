ActiveAdmin.register Product do
	index do
		column :product_name
		column :price
		column :description
		column :category_id
		column :product_name
		column :pictures_attributes
	end
end
