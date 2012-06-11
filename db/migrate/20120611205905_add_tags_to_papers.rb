class AddTagsToPapers < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
    end
    add_column :papers, :tag_id, :integer
    add_index :papers, :tag_id

    create_table :papers_tags do |t|
      t.integer :paper_id
      t.integer :tag_id
    end
  end
end
