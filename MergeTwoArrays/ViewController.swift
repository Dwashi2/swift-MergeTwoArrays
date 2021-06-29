//
//  ViewController.swift
//  MergeTwoArrays
//
//  Created by Daniel Washington Ignacio on 29/06/21.
//


/*
 Create a function that takes two arrays and combines them by alternatingly taking elements from each array in turn.

 The arrays may be of different lengths, with at least one character / digit.
 The first array will contain string characters (lowercase, a-z).
 The second array will contain integers (all positive).
 Examples

 mergeArrays(["f", "d", "w", "t"], [5, 3, 7, 8])
 ➞ ["f", 5, "d", 3, "w", 7, "t", 8]

 mergeArrays([1, 2, 3], ["a", "b", "c", "d", "e", "f"])
 ➞ [1, "a", 2, "b", 3, "c", "d", "e", "f"]

 mergeArrays(["a", "b", "c", "d", "e"], [1, 2, 3, 4, 5])
 ➞ ["a", 1, "b", 2, "c", 3, "d", 4, "e", 5]
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.mergeArrays(["f", "d", "w", "t"], [5, 3, 7, 8]))
        print(self.mergeArrays([1, 2, 3], ["a", "b", "c", "d", "e", "f"]))
        print(self.mergeArrays(["a", "b", "c", "d", "e"], [1, 2, 3, 4, 5]))
    }
    
    func mergeArrays(_ a: [Any], _ b: [Any]) -> [Any] {
        let sizeA: Int = a.count
        let sizeB: Int = b.count
        var count: Int = 0
        var arr: [Any] = []
        if sizeA > sizeB {
            for n in 0..<sizeB{
                arr.append(a[n])
                arr.append(b[n])
                count = count + 1
            }
            for n in count..<sizeA{
                arr.append(a[n])
            }
        }else if sizeB > sizeA{
            for n in 0..<sizeA{
                arr.append(a[n])
                arr.append(b[n])
                count = count + 1
            }
            for n in count..<sizeB{
                arr.append(b[n])
            }
        }else{
            for n in 0..<sizeB{
                arr.append(a[n])
                arr.append(b[n])
                count = count + 1
            }
        }
        return arr
    }


}
