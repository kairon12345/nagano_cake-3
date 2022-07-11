class Public::CustomersController < ApplicationController


  def show
   @customer=current_customer
  end

  def edit
    @customer=current_customer
  end

  def update
    @customer=current_customer
    @customer.uopdate
    redirect_to customers_my_page_path
  end

  def unsubscript
  end

  def withdraw
    @customer=current_customer
    @customer.update(is_active: false)
    reset_settion
    redirect_to root_path
  end

end