//
// Created by Karel Herink on 29/03/2017.
// Copyright (c) 2017 Karel Herink. All rights reserved.
//

import Foundation

public class Strings {

    init() {
        print("\n====== Strings ======\n")
    }

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

    func insert() {
        var hello = "Hello"
        hello.insert("!", at: hello.endIndex)
        print(hello)
        hello.remove(at: hello.index(before: hello.endIndex))
        print(hello)

        let range = hello.startIndex...hello.index(hello.endIndex, offsetBy: -3)
        hello.removeSubrange(range)
        print(hello)
    }

    func compare() {
        let eAcuteQuestion          = "Voulez-vous un caf\u{E9}?"
        let combinedEAcuteQuestion  = "Voulez-vous un caf\u{65}\u{301}?"

        // Both of these extended grapheme clusters are valid ways to represent
        // the character é, and so they are considered to be canonically equivalent
        if (eAcuteQuestion == combinedEAcuteQuestion) {
            print("caf\\u{E9} == caf\\u{65}\\u{301} is TRUE")
        }

    }
}
