class AddUrlToRestaraunt < ActiveRecord::Migration[5.0]
  def change
    add_column(:restaurants,:url,:string)
  end
end
