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

t1 = Transaction.create(amount:30,from:b1.name,to:b2.name)
t1.user = u1
t2 = Transaction.create(amount:30,from:b2.name,to:b1.name)
t2.user = u2
t3 = Transaction.create(amount:30,from:b1.name,to:b2.name)
t3.user = u3
t4 = Transaction.create(amount:30,from:b4.name,to:b2.name)
t4.user = u4
t5 = Transaction.create(amount:30,from:b1.name,to:b4.name)
t5.user = u1
t6 = Transaction.create(amount:30,from:b3.name,to:b2.name)
t6.user = u3


