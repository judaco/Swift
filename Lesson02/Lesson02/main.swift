//
//  main.swift
//  Lesson02
//
//  Created by Juda Cossa on 11/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

import Foundation

var myArray:[Int] = [Int]();//this how I define an array in swift, "there isn't a 'new' in swift", and no size
myArray.append(123);
myArray.append(67);
myArray.append(1251);
var myArray2 = [45, 65, 13];//the Swift recognize the types of my elements - here Int
myArray2.append(55);//can add directly the new element without define firstly the [Int] after "var myArray:"
var myArray3:[Any] = ["one", "two", 3];//for defining various types I need to define the type as Any for Int and String. Any can point on "any" object, the pointer in unlimited
myArray3.append("four");//can add "any" string
myArray3.append(5);//can add "any" integer
print(myArray3);

myArray2.insert(41, at: 1);//add the number at the position I choose in the array
myArray2.remove(at: 2);//remove the number at the position I choose in the array
myArray2.removeFirst();//remove the number at the last position of the array
for num in myArray2{//for each loop
    print(num);
}
//myArray2.removeAll(keepingCapacity: true)//keep the array as is, but remove all the elements, size = 0
var myArray4 = myArray2;
print();
myArray2[0] = 19;
//the array doesn't add the number 19 at the position "0", since array4 = array2, but the elements in array4 are the same as the elements were in array2, before the change in array2.
for num in myArray4{
    print(num);
}

//Dictionary is a collection of pairs (key, value) - like Map in JAVA

var myDictionary:[Int:String] = [Int:String]();//this object can contain pairs of int and string
myDictionary[100] = "Juda";//there is no index out of bound, the order doesn't important
//print(myDictionary[101]);//error
//myDictionary[100] = nil;
print(myDictionary.count);

var myDictionary2:[String: Any] = ["firstName":"Juda", "lastName":"Cossa", "age":30];

for (key, value) in myDictionary2{
    print("key = \(key), value = \(value)");// \ - shirshur
}
for key in myDictionary2.keys{
    print(key);//print only my keys
}

var i = 0;
while i < 10 {
    print(i);
    i += 1;
}

i = 5;
switch i {
case 1:
    print("1");
case 2:
    print("2");
default:
    break;
}

func myFunc(param:String)->String {
    print("in myFunc \(param)");
    return "hello";
}
let result = myFunc(param: "some value");

