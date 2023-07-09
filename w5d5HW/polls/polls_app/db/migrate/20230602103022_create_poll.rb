class CreatePoll < ActiveRecord::Migration[7.0]
  def change
    create_table :polls do |t|
      t.string :poll_title
      t.string :

      t.timestamps
    end
  end
  validates :user_id

  belongs_to :user,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User
end
