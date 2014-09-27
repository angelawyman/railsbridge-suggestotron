# == Schema Information
#
# Table name: topics
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Topic < ActiveRecord::Base
  has_many :votes, dependent: :destroy

  def self.upvote
    @topic = Topic.find(params[:id])
    @topic.votes.create
    redirect_to(topics_path)
  end

end
