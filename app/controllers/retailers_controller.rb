class RetailersController < ApplicationController
def show
    @retailer = Retailer.find(params[:id])
    @items = @retailer.item
end

end
