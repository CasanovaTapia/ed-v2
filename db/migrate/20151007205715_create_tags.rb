class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :body
      t.references :profile, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
