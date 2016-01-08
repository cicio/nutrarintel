class FoodsController < ApplicationController
	def index
	end
	
	def show
		@food = Food.find(params[:id])
	end

	def new
	end

	def edit
	end
	
	def create
		@food = Food.new(food_params)
		@food.save
		redirect_to @food 
	end

	def update
	end

	def destroy
	end

	private
	  def food_params
	  	params.require(:food).permit(:nutrient_databank_id,
	  		:food_group_code_id,:long_description,
	  		:short_description,:common_name,:manufacturer,
	  		:survey,:refuse_description,:refuse,
	  		:scientific_name,:nitrogen_factor,:protein_factor,
	  		:fat_factor,:carbohydrate_factor)
	  end
end