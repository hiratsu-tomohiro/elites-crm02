class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      #名前を入力必須に
      t.string :name, null: false
      t.string :url
      t.string :address

      t.timestamps null: false
    end
  end
end
