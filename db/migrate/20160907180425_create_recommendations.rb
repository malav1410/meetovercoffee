class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
    	t.text :user_link
    	t.string :email
    	t.string :cafe_name
    	t.string :city
    	t.string :cafe_link
    	t.string :wifi_password
    	t.text :note
    	
      t.timestamps null: false
    end
  end
end
