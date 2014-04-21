class WinesController < ApplicationController
	before_action :set_wine, only: [ :show, :edit, :update, :destroy ]
	before_action :set_specials_flash, only: [:index, :new]

	def index
		@available_at = Time.now
		@wines = Wine.includes(:log_entries).order(:name).page(params[:page])
	end
	def show
	end
	def new
		@wine = Wine.new
	end
	def create
	    @wine = Wine.new(wine_params)
	    if @wine.save
	      redirect_to @wine, notice: "#{@wine.name} was added to the list of wines in stock!"
	    else
	      render :new
		end
	end	  	
	def update
	    if @wine.update(wine_params)
	      redirect_to @wine
	    else
	      render :new
	    end
	end
	def edit
	end
	def update
		@wine.update(wine_params)
		redirect_to @wine, notice: "Database information on #{@wine.name} was updated!"
	end 
	def destroy
		@wine.destroy
		redirect_to wines_url
	end

	private

	def wine_params
		params.require(:wine).permit(:name, :year, :winery, :varietal, :country)
	end
	def set_wine
		@wine = Wine.find(params[:id])
	end
	def set_specials_flash
		flash[:notice] = "All US Wines are 25% off this week"
	end
end