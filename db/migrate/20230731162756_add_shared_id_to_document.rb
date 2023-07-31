class AddSharedIdToDocument < ActiveRecord::Migration[7.0]
  def change
    add_column :documents, :shared_id, :uuid, index: true, default: "gen_random_uuid()"
  end
end
