class CreateOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :options, id: :string do |t|
      t.string :title

      t.timestamps
    end
  end
end
