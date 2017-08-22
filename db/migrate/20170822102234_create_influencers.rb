class CreateInfluencers < ActiveRecord::Migration[5.1]
  def change
    create_table :influencers do |t|
      t.string :pseudo
      t.string :fb_url
      t.string :fb_followers
      t.string :ig_url
      t.string :ig_followers
      t.string :tw_username
      t.string :tw_followers
      t.text :description
      t.string :language
      t.string :avatar
      t.image :banner_img
      t.references :user, foreign_key: true
      t.references :inluencer, foreign_key: true

      t.timestamps
    end
  end
end
