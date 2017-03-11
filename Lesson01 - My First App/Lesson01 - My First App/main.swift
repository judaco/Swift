//
//  main.swift
//  Lesson01 - My First App
//
//  Created by Juda Cossa on 18/02/2017.
//  Copyright © 2017 Juda Cossa. All rights reserved.
//

import Foundation

print("Hello, World!")
let myInt:Int = 45;
print("Hello,\(myInt) World!")
let myByte:Int8 = 127;//count the amount of the bytes - 128 illegal, until 127 is legal - like a byte
let myShort:Int16 = 32000;
let myLong:Int64 = 12542541;
let myUnsignedByte:UInt = 255;//no sign of + or -, the number can't be negative - so it's from 0 - 255

let str1 = "hello ";
let str2 = "world";
let str3 = str1 + str2;//shirshur of strings
//print(str3);
let areTheyEqual = str1 == str2;
print(areTheyEqual)

//tuples
let rectangle1 = (0, 0, 200, 100);
let rectangle2 = (x: 0, y:0, width: 200, height: 100);
print(rectangle1.3);//100
print(rectangle2.height)//100
let (x,y,width,height) = rectangle1;
//let (x,y,_,height) = rectangle1; //if I don't want to use the variable "width", then I can put and underline (_)
print(x);
var str4:String?;//the value of str4 is "nil"
str4 = nil;
//str4 = "hello";
//print(str4!);

//conditional unwrap
var name:String?;
name = "Juda";
if let theName = name{//if name is "nil" all the statement is false
    print(theName);
}else{
    print("name is nil");
}

typealias Message = String;//the name "Message" is a type of type which is String
let myMessage:Message = "hello";

typealias Byte = Int8;
typealias Short = Int16;

let age:Byte = 45;

var num = 5;
num+=1;
print(num);

for i in 1...10{//1...10 - it's an array of numbers from 1 to 10 (but not really an array)
    print(i);
}

for i in 1..<10{//1..10 - from 1 to 9
    print(i);
}

enum MaritialStatus{
    case Married;
    case Divorced;
    case Single;
    case Widow;
}

var myStatus: MaritialStatus = .Married;
