//
// Created by Karel Herink on 12/04/2017.
// Copyright (c) 2017 Karel Herink. All rights reserved.
//

import Foundation

class CollectionsArrays {

    init() {
        print("\n====== CollectionsSets: Arrays ======\n")
    }

    func initialization() {
        print("\n------ initialization ------\n")
        var someInts = [Int]()
        print("someInts \(someInts) contains \(someInts.count) elements")

        someInts.append(3)
        print("someInts \(someInts) contains \(someInts.count) elements")

        someInts = []
        print("someInts \(someInts) contains \(someInts.count) elements")

        var someDoubles = [Double](repeating: 0.0, count: 5)
        print("someDoubles \(someDoubles) contains \(someDoubles.count) elements")

        var moreDoubles = [Double](repeating: 66.6, count: 2)
        print("moreDoubles \(moreDoubles) (weird printing) contains \(moreDoubles.count) elements")


        var d: [Double] = [66.6]
        print(d.first!)

        var manyDoubles = someDoubles + moreDoubles
        print("manyDoubles \(manyDoubles) contains \(manyDoubles.count) elements")
    }

    func valuesAccess() {
        print("\n------ valuesAccess ------\n")
        var shopping:[String] = ["eggs", "sugar", "milk"]
        print(shopping)
        shopping += ["flour"]
        print(shopping)

        shopping.append("butter")
        print(shopping)

        shopping[0] = "12 eggs"
        print(shopping)

        shopping[1..<3] = ["sweetener", "liquid soy", "jam"]
        print(shopping)

        shopping[0...2] = ["6 eggs"]
        print(shopping)

        shopping.insert("maple syrup", at: 1)
        print(shopping)

        shopping.remove(at: 2)
        print(shopping)

        shopping[0...1] = []
        print(shopping)

        for item in shopping {
            print(item)
        }

        let enumerated = shopping.enumerated()
        for (index, value) in enumerated {
            print("index \(index) contains \(value)")
        }

    }

}
