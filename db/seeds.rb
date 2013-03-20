Bank.delete_all
User.delete_all
Transaction.delete_all

b1 = Bank.create(name:"Bank of America")
b2 = Bank.create(name:"Wells Fargo")
b3 = Bank.create(name:"JPM Chase")
b4 = Bank.create(name:"The Other Bank")

u1 = User.create(name:"Jill",email:"J@gmail.com",password:"a",password_confirmation:"a")
u2 = User.create(name:"Sean",email:"S@gmail.com",password:"a",password_confirmation:"a")
u3 = User.create(name:"Brian",email:"B@gmail.com",password:"a",password_confirmation:"a")
u4 = User.create(name:"Nick",email:"N@gmail.com",password:"a",password_confirmation:"a")

t2 = Transaction.create(amount:20,from:b2.name,to:b1.name,dt:Time.now+ (2*7*24*60*60))
t2.user = u2
t2.save
t3 = Transaction.create(amount:5,from:b1.name,to:b2.name,dt:Time.now+ (3*7*24*60*60))
t3.user = u3
t3.save
t4 = Transaction.create(amount:8,from:b4.name,to:b2.name,dt:Time.now+ (4*7*24*60*60))
t4.user = u4
t4.save
t5 = Transaction.create(amount:20,from:b1.name,to:b4.name,dt:Time.now+ (5*7*24*60*60))
t5.user = u1
t5.save
t6 = Transaction.create(amount:80,from:b3.name,to:b2.name,dt:Time.now+ (6*7*24*60*60))
t6.user = u3
t6.save