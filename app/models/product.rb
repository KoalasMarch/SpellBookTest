# == Schema Information
#
# Table name: products
#
#  id             :bigint           not null, primary key
#  description    :text
#  name           :string
#  price_currency :string
#  price_subunit  :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Product < ApplicationRecord
  def as_json
    { 
      name: name, 
      description: description, 
      price_currency: price_currency, 
      price_subunit: price_subunit
    }
  end
end
