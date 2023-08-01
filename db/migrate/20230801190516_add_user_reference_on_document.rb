class AddUserReferenceOnDocument < ActiveRecord::Migration[7.0]
  def change
    add_reference :documents, :user, foreign_key: true, index: true
  end
end
