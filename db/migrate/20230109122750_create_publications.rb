class CreatePublications < ActiveRecord::Migration[7.0]
  def change
    create_table :publications do |t|
      t.string :title
      t.text :description
      t.string :file_url

      t.timestamps
    end
  end
end
