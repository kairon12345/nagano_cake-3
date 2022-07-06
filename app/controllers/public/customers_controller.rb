class Public::CustomersController < ApplicationController

  def show
    @customer=Customer.all
  end

  def edit
    @customer=Customer.all
  end

  def update
  end

  def unsubscript
  end

  def withdraw
  end

end