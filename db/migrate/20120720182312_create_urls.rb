class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
    	t.column :long_url, :string
    	t.column :short_url, :string

      t.timestamps
    end
  end
end
