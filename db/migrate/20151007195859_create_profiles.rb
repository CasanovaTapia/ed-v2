class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :avatar
      t.text :bio, :limit => nil
      t.string :proj
      t.string :proj_url
      t.string :site
      t.references :industry, index: true
      t.references :city, index: true

      t.timestamps
    end
  end
end
