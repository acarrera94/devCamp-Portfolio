class PortfoliosController < ApplicationController
  def index #this is the action/method to index all portfolio_items
    @portfolio_items = Portfolio.all # calls from the model
    #@port... makes it available to the view, it's a variable
  end

  def new #this is the action to create a new item
      @portfolio_item = Portfolio.new #calling from the model
      #makes it available to the view
  end

  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))# here we tell the form what it's allowed to access

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
    #makes it available to the view at the webpage with edit/id
  end

  def update

    @portfolio_item = Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path, notice: 'The record was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

def show
  @portfolio_item = Portfolio.find(params[:id])
end

end
