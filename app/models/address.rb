class Address < ApplicationRecord

  belongs_to :customer

  def full_address
    '〒' + postal_code + ' ' + address + ' ' + name
  end

private
  def address_params
    params.require(:address).permit(:name,:postal_code,:address)
  end
end
