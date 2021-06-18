class ChangeColumnNameReviews < ActiveRecord::Migration[6.1]
  def change
    rename_column :reviews, :book_id, :crisp_id
  end
end
