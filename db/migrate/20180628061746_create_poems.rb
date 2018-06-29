class CreatePoems < ActiveRecord::Migration[5.1]
  def change
    create_table :poems do |t|
      t.text :content
      t.timestamps
    end
  end
  # default_scope -> { order(created_at: :desc) }
end
