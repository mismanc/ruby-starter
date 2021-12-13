class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions, id: :string do |t|
      t.string :title
      t.string :type, default: 'text'

      t.timestamps
    end
  end
end
