//
//  main.swift
//  Lesson03
//
//  Created by Juda Cossa on 11/03/2017.
//  Copyright © 2017 Juda. All rights reserved.
//

import Foundation

func findMax(nums:[Int])->Int{
    var max = nums[0];
    /*
     for nums in nums {
     if num > max {
     max = num;
     }
     }
     */
    for i in 1..<nums.count {
        if nums[i] > max {
            max = nums[i];
        }
    }
    return max;
}

func averge(nums:[Int])->Float{
    var sum:Int = 0;
    for num in nums {
        sum += num;
    }
    return Float(sum) / Float(nums.count);//no implicit casting
}

func findTip(nums:[Int], from:Int, to:Int)->Int {//from where to where I can find the Tip
    if from == to{
        return from;
    }
    if to-from == 1{
        if nums[from] > nums[to]{
            return from;
        }
        return to;
    }
    let middle = from + (to-from)/2
    //let middle = (from + to) / 2;//can create me an overflow with the max Int sum of from+to
    
    let greaterThanMyLeft = nums[middle] > nums[middle - 1];
    let greaterThanMyRight = nums[middle] > nums[middle + 1];
    
    if greaterThanMyLeft && greaterThanMyRight {
        return middle;
    }
    if greaterThanMyLeft && !greaterThanMyRight {
        return findTip(nums: nums, from: middle + 1, to: to);
    }else{
        return findTip(nums: nums, from: from, to: middle - 1);
    }
}

let  nums:[Int] = [4,6,5,4,3];
print(findTip(nums: nums, from: 0, to: nums.count - 1));

func myFunc(){//I can define a function in function
    func myFunc2(){
        print("in myFunc2()");
    }
    myFunc2();
}

myFunc();

//myFunc2() //I cannot call the function outside its own function

//Closures - Anonymous Functions
//the purpose is to move a code to other func or relevant code I need
let sorted = nums.sorted { (x: Int, y: Int) -> Bool in
    return x < y;
}
for num in nums {
    print(num);
}


func myFunc3 (nums: [Int], num: Int, whatToDo: (Int) -> Void){
    for i in 0..<nums.count {
        if nums[i] == num{
            whatToDo(i);
        }
    }
}

myFunc3(nums: nums, num: 3) { (i: Int) in //it seems that we have 2 params but we have 3, the end one is "whatToDo param"
    print(i);
};

let myClosure = {(x: Int, y: Int) -> Int in //now my closure is a function and a consonant variable (let)
    return x + y;
};
print (myClosure(5,3));

struct User {
    var userName: String;
    var password: String;
    
    func description()->String{
        return "userName: \(userName), password: \(password)";
    }
}
var user1 = User(userName: "elad", password: "12345");
var user2 = user1;
user1.userName = "Shalev";
//myButton.setText(text: "avi");
//[myButton setText:@"avi"]
print(user2.description());//[user2 description];
func test() -> String {
    print("in test()");
    return "some last name";
}
