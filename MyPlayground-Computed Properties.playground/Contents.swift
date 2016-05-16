//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let currentYear = 2016

struct Person {
    
    let firstName: String
    let lastName: String
    var birthYear: Int
    
    var age: Int {
        get {
            return (currentYear - birthYear)
        }
        set(newAge) {
            birthYear = currentYear - newAge
        }
    }
    
}

var newPerson = Person(firstName: "Ross", lastName: "McIlwaine", birthYear: 1990)

print(newPerson)
print(newPerson.birthYear)
print("\(newPerson.firstName) \(newPerson.lastName)")

newPerson.age = 45
print(newPerson.age)
print(newPerson.birthYear)
