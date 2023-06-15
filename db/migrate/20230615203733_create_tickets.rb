class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :request_number
      t.integer :sequence_number
      t.string :request_type
      t.string :request_action
      t.datetime :response_due_date_time
      t.string :primary_sac
      t.string :additional_sac
      t.text :dig_site_info

      t.timestamps
    end
  end
end
