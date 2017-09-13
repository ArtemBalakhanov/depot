
# . . .
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

r1 = Role.create({name: "Guest", description: "Can read Ads"})
r2 = Role.create({name: "User", description: "Can read and create ads. Can update and destroy own ads"})
r3 = Role.create({name: "Admin", description: "Can perform any CRUD operation on any resource, except for the operation to create messages and edit them, can not remove themselves or change their role.,"})

u1 = User.create({name: "Sally", email: "sally@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r1.id})#u2 = User.create({name: "Sue", email: "sue@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r2.id})
u3 = User.create({name: "Kev", email: "kev@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r2.id})
u4 = User.create({name: "Jack", email: "jack@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r3.id})

a1 = Ad.create({name: "Rayban Sunglasses", description: "Stylish shades", price: 99.99, user_id: u2.id})
a2 = Ad.create({name: "Gucci watch", description: "Expensive timepiece", price: 199.99, user_id: u2.id})
a3 = Ad.create({name: "Henri Lloyd Pullover", description: "Classy knitwear", price: 299.99, user_id: u3.id})
a4 = Ad.create({name: "Porsche socks", description: "Cosy footwear", price: 399.99, user_id: u3.id})
