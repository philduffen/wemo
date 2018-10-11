class CreateSwitches < ActiveRecord::Migration[5.1]
  def change
    create_table :switches do |t|
      t.string :port
      t.string :host
      t.string :name

      t.timestamps
    end
  end
end
