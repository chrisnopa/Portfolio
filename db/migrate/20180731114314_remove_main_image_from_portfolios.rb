class RemoveMainImageFromPortfolios < ActiveRecord::Migration[5.2]
  def change
    remove_column :portfolios, :main_image, :text
  end
end
