class Admin::CustomersController < ApplicationController

  def index
    @customers=Customer.all
  end

  def show
    @customer=Customer.find(params[:id])
  end

  def edit
  end

  def update
  end

private

def admin_customer_params
  params.require(:customer).permit()
end

end
