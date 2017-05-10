//
// Created by Karel Herink on 12/04/2017.
// Copyright (c) 2017 Karel Herink. All rights reserved.
//

import Foundation

class CollectionsDictionaries {

    init() {
        print("\n====== Collections: Dictionaries ======\n")
    }

    func initialization() {
        print("\n------ initialization ------\n")
        var namesOfIntegers = [Int: String]()
        namesOfIntegers[0] = "zero"
        print(namesOfIntegers)

        //set to empty
        namesOfIntegers = [:]
        print(namesOfIntegers)

        namesOfIntegers = [0:"zero", 1:"one", 2:"two"]
        print(namesOfIntegers)

        namesOfIntegers[0] = "ZERO"
        print(namesOfIntegers)

        var oldValue = namesOfIntegers.updateValue("ONE", forKey: 1)
        print(oldValue)

        for (name, value) in namesOfIntegers {
            print("\(name), \(value)")
        }
    }

}
