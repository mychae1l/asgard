class Admin::CategoriesController < ApplicationController
	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)
		if @category.save
			redirect_to new_admin_category_path
		end
	end

	private
	def category_params
		params.require(:category).permit(:title)
	end
end
