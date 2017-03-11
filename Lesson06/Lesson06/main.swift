//
//  main.swift
//  Lesson06
//
//  Created by Juda Cossa on 11/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

import Foundation

struct Station{
    var charge:Int;
    var distanceToNext:Int;
}

func findStartingStation(stations:[Station])->Int{
    var sum = 0;
    var position = 0;
    for i in 0..<stations.count{
        sum += stations[i].charge;
        sum -= stations[i].distanceToNext;
        if sum < 0{
            position = i + 1;
            sum = 0;
        }
    }
    return position;
}


class Person{
    var name: String;
    var age: Int;
    
    //    init(){
    //        name = "";
    //        age = 0;
    //        print("in init()");
    //    }
    
    init(name: String, age: Int){
        self.name = name;
        self.age = age;
    }
    
    
    func printMe(){
        print("name: \(name) age: \(age)");
    }
    
    func goToWork(a x: Int,b y: Int){
        let z = x + y;
    }
    
    deinit {
        print("in deinit of Person");
    }
    
}


class Employee: Person {
    var employeeId:Int!
    init(name:String,age:Int,employeeId:Int){
        super.init(name: name, age: age);
        setEmployeeId(employeeId: employeeId);
    }
    
    func setEmployeeId(employeeId:Int){
        if employeeId > 0 {
            self.employeeId = employeeId;
        }
    }
    
}




var p:Person? = Person(name: "John", age: 45);
p!.printMe();
//p = nil;

class A{
    weak var b:B?;
    deinit {
        print("in deinit of A");
    }
}
class B{
    var a:A?;
    deinit {
        print("in deinit of B");
    }
}

var a:A? = A();
var b:B? = B();
a!.b = b;
b!.a = a;

a = nil;
b = nil;




extension Person{
    func goToSleep(){
        print("going to sleep");
    }
}


p!.goToSleep();

let emp = Employee(name: "Adam", age: 55, employeeId: 123);
emp.goToSleep();


extension Int{
    func myFunc()->Int{
        return self + 1;
    }
    func printMe(){
        print(self);
    }
}

let x = 5;
let y = x.myFunc();
print(y);
x.printMe()


protocol MyProtocol {
    func myFunc(x:Int, y:Int)->Int;
    func myFunc2(s:String);
}

@objc protocol MyOtherProtocol {
    func myFunc(x: Int, y: Int)->Int;
    func myOtherFunc(d:Double);
    @objc optional func someLongNameForMyFunc();
    
}

class MySuperClass{
    
}

class MyClass : MySuperClass, MyProtocol, MyOtherProtocol{
    
    func myOtherFunc(d: Double) {
        
    }
    
    func myFunc2(s: String) {
        
    }
    
    func myFunc(x: Int, y: Int) -> Int {
        return x + y;
    }
    
}

class C : NSObject{
    func myFunc(){
        print("in myFunc");
    }
}

let c = C();
print(c.responds(to: "myFunc2"));


c.perform("myFunc");


protocol SomeProtocol {
    func myFunc();
}

class D{
    private var _delegate : SomeProtocol?;
    
    func doSomething(){
        if let theDelegate = _delegate{
            theDelegate.myFunc();
        }
    }
    
    var delegate:SomeProtocol?{
        set{
            _delegate = newValue;
        }
        get{
            return _delegate;
        }
    }
    
}

p!.goToWork(a: 5, b: 6);



func multiply(_ x:Int, by y:Int)->Int{
    return x * y;
}

let z = multiply(5, by: 3);

func divide(_ x:Int, by y:Int = 2)->Int{
    return x/y;
}

print(divide(8));


func sum(_ nums: Int...)->Int{
    var sum = 0;
    for num in nums{
        sum += num;
    }
    return sum;
}
let g = sum(5,6,8);


func yourFunc(x: inout Int){
    x += 1;
}

var w = 10;
yourFunc(x: &w);
print(w);

