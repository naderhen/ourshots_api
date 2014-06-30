# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Friendship.destroy_all
Group.destroy_all
GroupRegistration.destroy_all
GroupShot.destroy_all
Selfie.destroy_all

u = User.create(email: "naderhen@gmail.com", password: "test1234", password_confirmation: "test1234")
u2 = User.create(email: "soltisl@gmail.com", password: "test1234", password_confirmation: "test1234")

u.friendships.build(friend_id: u2.id)
u2.friendships.build(friend_id: u.id)

g = Group.create(name: "Sandbox Group")

g.group_registrations.create(user_id: u.id)
g.group_registrations.create(user_id: u2.id)


g2 = Group.create(name: "Nader Only")
g2.group_registrations.create(user_id: u.id)

g3 = Group.create(name: "Lindsay Only")
g3.group_registrations.create(user_id: u2.id)

gs1 = g.group_shots.create(date: Date.yesterday)
gs2 = g.group_shots.create(date: Date.today)

gs1.selfies.create(user_id: u.id)
gs1.selfies.create(user_id: u2.id)

gs2.selfies.create(user_id: u.id)
gs2.selfies.create(user_id: u2.id)
