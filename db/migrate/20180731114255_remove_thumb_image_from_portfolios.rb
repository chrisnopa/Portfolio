class RemoveThumbImageFromPortfolios < ActiveRecord::Migration[5.2]
  def change
    remove_column :portfolios, :thumb_image, :text
  end
end
