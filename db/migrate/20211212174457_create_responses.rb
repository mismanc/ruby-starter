class CreateResponses < ActiveRecord::Migration[6.1]
  def change
    create_table :responses, id: :string do |t|
      t.string :body

      t.timestamps
    end
  end
end
