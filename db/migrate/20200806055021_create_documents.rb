class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.text :content
      t.string :name

      t.timestamps
    end
  end
end
