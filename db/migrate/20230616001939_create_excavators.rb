class CreateExcavators < ActiveRecord::Migration[7.0]
  def change
    create_table :excavators do |t|
      t.string :company_name
      t.string :address
      t.boolean :crew_on_site
      t.belongs_to :ticket, foreign_key: true

      t.timestamps
    end
  end
end
