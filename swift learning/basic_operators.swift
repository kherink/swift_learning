//
// Created by Karel Herink on 29/03/2017.
// Copyright (c) 2017 Karel Herink. All rights reserved.
//

import Foundation

public class BasicOperators {

    init() {
        print("====== BasicOperators ======")
    }

    func comparing() {
        var value = (index: 1, animal: "zebra") > (num: 2, fruit: "apple")
        assert(value == false)

        value = "zebra" > "apple"
        assert(value == true)

        assert((4, "dog") == (4, "dog"))
    }

    func nilCoalescing() {
        let defaultColor = "Red"
        let userColor: String? = nil

        let preferedColor = userColor ?? defaultColor;

        //below code produces a warning
        let x = preferedColor ?? "BLUE"

        print("preferred color: \(preferedColor)")
    }

    func ranges() {
        for index in 3...5 {
            print(index)
        }

        let names = ["anna", "bob", "cecil"]
        for index in 0..<names.count {
            print(names[index])
        }
    }


}
