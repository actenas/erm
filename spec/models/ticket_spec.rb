require 'spec_helper'

describe Ticket do
  pending "add some examples to (or delete) #{__FILE__}"
end

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

