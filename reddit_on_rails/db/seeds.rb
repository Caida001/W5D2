# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Sub.destroy_all
Post.destroy_all
Comment.destroy_all

a = User.create!(username: 'Brooke', password: 'aloogobiburrito')
b = User.create!(username: 'Claire', password: 'mounttamhikes')
c = User.create!(username: 'Scott', password: 'handshakes')
d = User.create!(username: 'Quinn', password: 'dumbledore')

e = Sub.create!(title: 'App Academy Drama', description: 'Staff Secrets', moderator_id: b.id)
f = Sub.create!(title: 'Dogs', description: 'Worse than cats (TM)', moderator_id: d.id)
g = Sub.create!(title: 'Food', description: 'Always hungry.', moderator_id: a.id)

h = Post.create!(title: 'Who stole my lunch?', author_id: a.id, content: 'No seriously, guys, where is it?',sub_id:e.id)
i = Post.create!(title: 'Reggie the Reject Bear: MISSING', author_id: c.id, content: 'Discovered at 12:35am this morning.'sub_id:f.id)
j = Post.create!(title: 'Newfoundland/Daschund friendship', author_id: d.id, content: 'Thoughts?'sub_id:e.id)
k = Post.create!(title: 'Cookies', author_id: b.id, content: 'These are so good! \n http://allrecipes.com/recipe/11032/oatmeal-craisin-cookies/?scale=12&ismetric=0', sub_id: g.id)
l = Post.create!(title: 'Curry Up Now', author_id: a.id, content: 'Aloo Gobi Burrito forever <3'sub_id:g.id)

m = Comment.create!(post_id: h.id, user_id: a.id, body: 'Not me...')
n = Comment.create!(post_id: i.id, user_id: a.id, body: 'I saw Jeff leaving the building with a large duffel bag last night. Could\'ve been smuggling him out.')
o = Comment.create!(post_id: j.id, user_id: c.id, body: 'That\'s us!')
q = Comment.create!(post_id: k.id, user_id: d.id, body: 'Let\'s ask Jordan to make them :)')
r = Comment.create!(post_id: l.id, user_id: b.id, body: 'Punjabi by Nature burrito forever!')
