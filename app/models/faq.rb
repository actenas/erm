# == Schema Information
#
# Table name: faqs
#
#  id         :integer         not null, primary key
#  question   :string(255)     not null
#  answer     :text
#  invalid    :boolean
#  created_at :datetime
#  updated_at :datetime
#

class Faq < ActiveRecord::Base
end



