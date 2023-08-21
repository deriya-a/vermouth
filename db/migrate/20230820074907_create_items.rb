class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table   :items do |t|
      t.integer    :category_id, null: false
      t.integer    :color_id, null: false
      t.integer    :type_id, null: false
      t.text       :item_memo
      t.references :user ,              null: false, foreign_key: true
      t.timestamps
    end
  end
end
