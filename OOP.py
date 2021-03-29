#Creating Class and Object in Python

class Animal:
    spcies = "Animals"

    def __init__(self,name,age):
        self.name = name
        self.age = age


tiger = Animal("Tiger",50)

cat = Animal("Cat",5)

print(tiger.__class__.spcies)
print(cat.__class__.spcies)

print(tiger.age)
print(tiger.name)