//
// Created by Karel Herink on 29/03/2017.
// Copyright (c) 2017 Karel Herink. All rights reserved.
//

import Foundation

public class Strings {

    func emptyStrings() {
        let s1 = ""
        let s2 = String()

        assert(s1 == s2)
    }

    func mutability() {
        var s = "Horse"
        s += " and carriage"
        print(s)
    }

    func chars() {
        let sa = "abcd🐶"
        for item in sa.characters {
            print(item)
        }
        print("that makes \(sa.characters.count) characters")
    }

    func indexes() {
        let s = "Dobrý den!"
        assert("D" == s[s.startIndex])

        assert("!" == s[s.index(before: s.endIndex)])
    }
}
