class AddCommentReferenceToComments < ActiveRecord::Migration[7.0]
  def change
    change_table :comments do |t|
      t.references :parent, index: true
    end
  end
end
