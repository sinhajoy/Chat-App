#Creating Class and Object in Python

class Animal:
    spcies = "Animals"

    def __init__(self,name='Cat',age=100):
        self.name = name
        self.age = age

    
tiger = Animal("Tiger",50)

cat = Animal("Cat",5)
cat.numbers = 15

print(tiger.__class__.spcies)
print(cat.__class__.spcies)

print(tiger.age)
print(tiger.name)

tr = cat.__dict__