class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.string :company
      t.string :period
      t.string :ocuppation
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
