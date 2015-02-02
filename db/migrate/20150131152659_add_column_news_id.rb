class AddColumnNewsId < ActiveRecord::Migration
  def change
    add_column  :comments, :news_id, :integer
  end
end
