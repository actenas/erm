# == Schema Information
#
# Table name: tasks
#
#  id           :integer         not null, primary key
#  ticket_id_id :integer         not null
#  message      :text
#  status       :string(255)
#  invalid      :boolean
#  created_at   :datetime
#  updated_at   :datetime
#

class Task < ActiveRecord::Base
  belongs_to :ticket_id
end


