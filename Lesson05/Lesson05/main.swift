//
//  main.swift
//  Lesson05
//
//  Created by Juda Cossa on 11/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

import Foundation

class Person {
    var name:String!;
    var age:Int!;
    
    func printPerson() {
        print("Person name:\(name) age:\(age)")
    }
}

class Employee: Person {
    var employeeID:Int!;
    
    override func printPerson() {
        //print("something else"); // emp2 - the override will set up and will print me "something else"
        super.printPerson();
        print("employeeID: \(employeeID)")
    }
}
var emp1 = Employee();
emp1.name = "Juda";
emp1.age = 30;
emp1.printPerson();

var emp2:Person = Employee();
emp2.printPerson();

//casting
//var emp3 = emp2 as? Employee; = emp3 is with type Employee and is optional
//var emp3:Employee = emp2 as! Employee;// as! = the way to make casting in Swift - as? - Employee must be optional as well (Employee?)
if emp2 is Employee{
    //is - like instanceOf in Java
    var emp3 = emp2 as! Employee;//emp2 must be type of Employee, but I am asking before if emp2 is Employee, as? - emp3 it could be optional
}
//if emp3 == nil{
 //   print("not employe");
//}

