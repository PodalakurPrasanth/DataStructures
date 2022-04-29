//
//  ViewController.swift
//  DataStructuresSwift
//
//  Created by gurajala srikanth on 08/04/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let names: [String] = ["Apple", "Microsoft", "Sony", "Lenovo", "Asus"]
        let result = names.insertionSort()
        print(result)
    }

    //MARK:- arrayReverse
    func arrayReverse(inputArray:[String]) -> [String]{
        var reversedNames = [String]()
        for obj in inputArray {
            reversedNames.insert(obj, at: 0)
        }
        print(reversedNames)
        return reversedNames
    }
    
    //MARK:- factorial
    func factorial(num: Int) -> Int {

      // condition to break recursion
      if num == 0 {
        return 1
      }

      // condition for recursive call
      else {
        return num * factorial(num: num - 1)
      }

    }
    
    //MARK:- Fibano series
    func fib(_ n: Int) {
        guard n > 1 else {
            return
        }
        var fibArray:[Int] = Array(repeating: 0, count: n)
        fibArray[0] = 0
        fibArray[1] = 1
        for ival in 2..<n {
            fibArray[ival] = fibArray[ival - 1] + fibArray[ival - 2]
        }
        print(fibArray)
    }
    
    func findPrimeNumbers(givenNumber:Int){
        let numbers = 1...givenNumber
   
        for number in numbers {
            if (number % 2 == 0) {
//                print(number)
            } else if (number % 3 == 0) {
//                print(number)
            } else if (number % 4 == 0) {
//                print(number)
            } else if (number % 5 == 0) {
//                print(number)
            } else if (number % 6 == 0) {
//                print(number)
            } else if (number % 7 == 0) {
//                print(number)
            } else if (number % 8 == 0) {
//                print(number)
            } else if (number % 9 == 0) {
//                print(number)
            } else {
                print("Prime is \(number)")
            }
        }
    }
    
    
    func swapTwoNumber(a1:Int, b1: Int){
        var a = a1
        var b = b1
        print("Before swapping: a = \(a), b = \(b)")
        (a, b) = (b, a)
        print("After  swapping: a = \(a), b = \(b)")
        print("Before swapping: a = \(a), b = \(b)")
        a = a + b
        b = a - b
        a = a - b
        print("After  swapping: a = \(a), b = \(b)")
    }
}
public class Box<T> {
    public typealias Listener = (T) ->Void
    public var listener:Listener?
    public var value: T {
        didSet{
            listener?(value)
        }
    }
    
    public init(_ value: T){
        self.value = value
    }
    
    public func bind(listener: Listener?){
        self.listener = listener
    }
    
    @objc public func didTap(_ sender: UIControl){
        if let sender = sender as? T {
            self.value = sender
        }
    }
}
