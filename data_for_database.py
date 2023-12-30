from faker import Faker
fake = Faker(locale='pl_PL')

for _ in range(10):
    print(fake.name())
    
for _ in range(10):
    print(fake.name())
    
for _ in range(10):
    print(fake.address())
    
for _ in range(10):
    print(fake.phone_number())        