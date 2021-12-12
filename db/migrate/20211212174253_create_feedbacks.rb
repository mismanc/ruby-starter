class CreateFeedbacks < ActiveRecord::Migration[6.1]
  def change
    create_table :feedbacks, id: :string do |t|

      t.timestamps
    end
  end
end
