class CreateAdminFilters < ActiveRecord::Migration
  def change
    create_table :admin_filters do |t|
      t.string :name
      t.string :condition
      t.string :operator
      t.string :value
      t.string :action_type
      t.string :slug
      t.timestamps
    end
    add_index :admin_filters, :slug, unique: true
  end
end
