class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :url
      t.string :city
      t.string :state
      t.string :slogan

      t.timestamps
    end
  end
end
