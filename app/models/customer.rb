# == Schema Information
#
# Table name: customers
#
#  id             :integer         not null, primary key
#  identification :string(255)
#  name           :string(255)
#  hire_date      :datetime
#  unit           :string(255)
#  job            :string(255)
#  birthday       :datetime
#  rg             :string(255)
#  mother_name    :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

class Customer < ActiveRecord::Base
end


