# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def open_json(path)
  ActiveSupport::JSON.decode(File.read(Rails.root.join(path)))
end

User.upsert_all(open_json('db/seeds/users.json'))
Article.upsert_all(open_json('db/seeds/articles.json'))
Category.upsert_all(open_json('db/seeds/categories.json'))
ArticleCategory.upsert_all(open_json('db/seeds/article_categories.json'))