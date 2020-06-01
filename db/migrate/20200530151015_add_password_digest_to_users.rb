class AddPasswordDigestToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :password_digest, :string
  end
end
#rails c explanation.
# BCrypt::Password.create("password")
#  => "$2a$12$n1hdH91CK999JBmlo4Ad2O.B5bqj48SwDYiUIpyoE9ceFKXGejTfe" 
