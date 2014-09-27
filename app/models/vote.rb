# == Schema Information
#
# Table name: votes
#
#  id         :integer          not null, primary key
#  topic_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Vote < ActiveRecord::Base
  belongs_to :topic
end
