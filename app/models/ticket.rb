# == Schema Information
#
# Table name: tickets
#
#  id             :integer         not null, primary key
#  number         :string(255)     not null
#  customer_id_id :integer         not null
#  faq_id_id      :integer
#  message        :text
#  status         :string(255)
#  invalid        :boolean
#  created_at     :datetime
#  updated_at     :datetime
#

class Ticket < ActiveRecord::Base
  belongs_to :customer_id
  belongs_to :faq_id
end



