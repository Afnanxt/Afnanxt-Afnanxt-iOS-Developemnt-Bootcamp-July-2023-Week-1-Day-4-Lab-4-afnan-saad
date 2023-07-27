import Foundation



enum Gender{
    case famele
    case male
    
    
    func x (){
        switch self{
        case.famele: print("famele")
        case.male: print("male")
            
      //  default : print ("   ")
            
        }
    }
}
var myChoice = Gender.famele
var myChoice1 = Gender.male
print(myChoice,myChoice1)

struct Car {
    var model:String
    var year:Int
    
}
var toyota:Car = Car(model: "toyota", year: 2001)

var ford :Car = Car(model: "ford", year: 2009)

print(toyota,ford)


    class Person{
        var name:String
        var age:Int
        var carOfPerson: Car
        var gender:Gender
        init(  name:String, gender :Gender, age:Int ,carOfPerson:Car)
        {
            self.name = name
            self.age = age
            self.carOfPerson = carOfPerson
            self.gender=gender
        }
    }
var FirstPerson = Person(name: "ahmed", gender: Gender.male,  age: 43, carOfPerson: Car.init(model: "lambrgini", year: 2019))
   
var SecondPerson = Person(name: "may", gender: Gender.famele,  age: 22, carOfPerson: Car.init(model: "lambrgini", year: 2023))


print(FirstPerson , SecondPerson)


class  BankAccount {
    
    var balance : Double
    init(balance : Double){self.balance = balance}
    
    
    func deposit(_ depositMoney : Double){
        balance += depositMoney
        print("The current balance is \(balance)")
    }
    
    
    func withdraw(_ withdrawMoney : Double){
        if balance >= withdrawMoney {
            balance -= withdrawMoney
            print("The current balance is \(balance)")
        }else{
            print("Decline! The balance is insufficient, the current balance is \(balance)")
          
        }
     }
}
var maryamAccount: BankAccount = BankAccount(balance: 10000000)
var manalAccount : BankAccount = BankAccount(balance: 100000)
maryamAccount.deposit(333333)
maryamAccount.withdraw(56)
maryamAccount.withdraw(1000)
print("---------------")
manalAccount.deposit(44000)
manalAccount.withdraw(2000)
manalAccount.withdraw(33)
