class CreateStreams < ActiveRecord::Migration[5.1]
  def change
    create_table :streams do |t|
      t.references :user, foreign_key: true
      t.text :desc
      t.string :status
      t.string :tokbox_session_id

      t.timestamps
    end
  end
end
