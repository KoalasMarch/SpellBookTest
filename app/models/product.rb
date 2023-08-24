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
end
