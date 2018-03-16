class PortfoliosController < ApplicationController
  before_action :portfolio_item, only: [:show, :edit, :update, :destroy]
  layout "portfolio"
	def index
	@portfolio_items = Portfolio.all
    end
    def angular
      @angular_portfolio_items= Portfolio.angular
    end
    def new
    	@portfolio_items=Portfolio.new
      3.times { @portfolio_items.technologies.build }
    end
    def create
    @portfolio_items=Portfolio.new(portfolio_params)

    respond_to do |format|
      if@portfolio_items.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio was successfully created.' }
        
      else
        format.html { render :new }
        
      end
     end
    end
    def edit
    end
    def update
      respond_to do |format|
      	if @portfolio_items.update(portfolio_params)
      		format.html { redirect_to portfolios_path, notice: 'Blog was successfully updated.' }
        
        else
            format.html { render :edit }
        
        end
     end
    end
    def show
    end
    def destroy
    	# perform the lookup
    	# delete/destroy the item
        @portfolio_items.destroy
        # redirection
        respond_to do |format|
        	format.html { redirect_to portfolios_url, notice: 'Blog was successfully destroyed.' }
      		
        end
    end
    private
    def portfolio_params
      params.require(:portfolio).permit(:title, 
                                        :subtitle, 
                                        :body,
                                        technologies_attributes: [:name]
                                        )
    end

    def portfolio_item
        @portfolio_items = Portfolio.find(params[:id])
    end
end

