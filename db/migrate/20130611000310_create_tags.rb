class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.references :story

      t.timestamps
    end
    add_index :tags, :story_id
  end
end
