class CreateWorksheets < ActiveRecord::Migration[5.0]
  def change
    create_table :worksheets do |t|
      t.jsonb :content

      t.timestamps
    end
  end
end
