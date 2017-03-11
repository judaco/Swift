//
//  main.swift
//  Lesson04
//
//  Created by Juda Cossa on 11/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

import Foundation

func test() -> String {
    print("in test()");
    return "some last name";
}

class Person{
    var name:String = "";
    private var _age:Float = 0;
    //lazy var lastName:String = test();
    private var _lastName:String?;
    var father:Person!;
    
    var age:Float{
        get{
            return _age * 2;
        }
        set{
            _age = newValue / 2;
        }
    }
    
    var lastName:String{
        get{
            if _lastName == nil{
                _lastName = test();
            }
            return _lastName!;
        }
        set{
            _lastName = newValue;
        }
    }
    
}

var person1 = Person();
person1.name = "elad";
person1.age = 100;
var person2 = person1;
person1.name = "Shalev";
print(person2.name);


var person3 = Person();
print("cheque");
person3.name = person1.name;
person3.age = person1.age;
if person3 === person1{
    print("they are equal");
}else{
    print("they are not equal");
}
print(person3.lastName);

func arrangeEventAtStart(input:[Int]){
    var nums = input;
    
    var i = -1;
    var temp = 0;
    for j in 0..<nums.count{
        if nums[j] % 2 != 0{
            i += 1;
            if i != j {
                temp = nums[i];
                nums[i] = nums[j];
                nums[j] = temp;
            }
        }
    }
    
    for i in 0..<nums.count {
        print(nums[i]);
    }
}

arrangeEventAtStart(input: [2, 1, 6, 4, 5]);

