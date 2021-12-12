class CreateSurveys < ActiveRecord::Migration[6.1]
  def change
    create_table :surveys, id: :string do |t|
      t.string :name

      t.timestamps
    end
  end
end
