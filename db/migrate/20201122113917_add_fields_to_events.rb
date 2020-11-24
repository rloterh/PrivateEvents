class AddFieldsToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :title, :text
  end
end
