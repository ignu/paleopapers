class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.string :article_url
      t.string :pdf_url

      t.string :title
      t.text :description
      t.text :quote

      t.timestamps
    end
  end
end
