# frozen_string_literal: true

class CreateDialogues < ActiveRecord::Migration[6.0]
  def change
    create_table :dialogues do |t|
      t.references :user, null: false, foreign_key: true, index: true
      t.references :partner, null: false, foreign_key: { to_table: :users },
                             index: true

      t.timestamps
    end
  end
end
