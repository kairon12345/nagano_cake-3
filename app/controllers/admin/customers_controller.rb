class Admin::CustomersController < ApplicationController

  def index
    @customers=Customer.page(params[:page]).per(10)
  end

  def show
    @customer=Customer.find(params[:id])
  end

  def edit
    @customer=Customer.find(params[:id])
  end

  def update
    @customer=Customer.find(params[:id])
    @customer.update(admin_customer_params)
    redirect_to admin_customers_path
  end

private

def admin_customer_params
  params.require(:customer).permit(:last_name,:last_name_kana,:first_name,:first_name_kana,:postal_code,:address,:telephone_number,
                                    :is_active)
end

end
