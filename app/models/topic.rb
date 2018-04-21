class Topic < ApplicationRecord
  has_many :votes, dependent: :destroy

  def upvote
    votes.create!
  end

  def downvote
    votes.last.destroy! if votes.count > 0
  end

  # scope :order_by_votes, order('jobs_count DESC')
end
