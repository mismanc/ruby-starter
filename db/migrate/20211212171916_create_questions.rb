class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions, id: :string do |t|
      t.string :title
      t.integer :type, default: 0

      t.timestamps
    end
  end
end
