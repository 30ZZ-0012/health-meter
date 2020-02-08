require 'bundler/setup'
Bundler.require

if development?
 ActiveRecord::Base.establish_connection('sqlite3:db/development.db')
end


class Item < ActiveRecord::Base
  belongs_to :category
end

class Category < ActiveRecord::Base
  has_many :items
end

class User < ActiveRecord::Base
  has_secure_password
end