# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
UserGroup.delete_all
User.delete_all
Group.delete_all



usr1 = User.create username: "serpentz", first_name: "AB", password: "password", email: "test@test.com"
usr2 = User.create username: "aljsd8", first_name: "bob", password: "password", email: "test@test1.com"
usr3 = User.create username: "asdfaa", first_name: "tommy", password: "password", email: "test@test2.com"
usr4 = User.create username: "dicd99s", first_name: "getu", password: "password", email: "test@test3.com"
usr5 = User.create username: "siis77", first_name: "issac", password: "password", email: "test@test4.com"



grp1 = Group.create name: "savings for holidays", count: 0
grp2 = Group.create name: "starting off", count: 0
grp3 = Group.create name: "quub 3", count: 0
grp4 = Group.create name: "test", count: 0


GroupAdmin.create admin: usr1, group: grp1
GroupAdmin.create admin: usr1, group: grp2
GroupAdmin.create admin: usr1, group: grp3
GroupAdmin.create admin: usr1, group: grp4

UserGroup.create user: usr1, group: grp1
UserGroup.create user: usr2, group: grp1
UserGroup.create user: usr3, group: grp1
UserGroup.create user: usr4, group: grp1
UserGroup.create user: usr1, group: grp2
UserGroup.create user: usr1, group: grp4
UserGroup.create user: usr1, group: grp3
UserGroup.create user: usr2, group: grp2
UserGroup.create user: usr4, group: grp2
UserGroup.create user: usr5, group: grp1
UserGroup.create user: usr5, group: grp2
UserGroup.create user: usr3, group: grp3
UserGroup.create user: usr4, group: grp4
UserGroup.create user: usr4, group: grp3
UserGroup.create user: usr4, group: grp2