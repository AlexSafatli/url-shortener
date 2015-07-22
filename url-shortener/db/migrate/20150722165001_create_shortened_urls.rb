class CreateShortenedUrls < ActiveRecord::Migration
  def change
    create_table :shortened_urls do |t|
      t.string :original_url, default: "http://google.com", null: false
      t.integer :visits, default: 0, null: false
      t.timestamps null: false
    end
  end
end
