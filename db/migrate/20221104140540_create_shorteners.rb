class CreateShorteners < ActiveRecord::Migration[7.0]
  def change
    create_table :shorteners do |t|
      t.string :BaseUrl
      t.string :Code
      t.string :ShortenedUrl

      t.timestamps
    end
  end
end
