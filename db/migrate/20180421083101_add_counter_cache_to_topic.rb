class AddCounterCacheToTopic < ActiveRecord::Migration[5.1]
  def change
    add_column :topics, :jobs_count, :integer, default: 0
  end
end
