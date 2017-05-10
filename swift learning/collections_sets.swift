//
// Created by Karel Herink on 12/04/2017.
// Copyright (c) 2017 Karel Herink. All rights reserved.
//

import Foundation

class CollectionsSets {

    init() {
        print("\n====== Collections: Sets ======\n")
    }

    func initialization() {
        print("\n------ initialization ------\n")
        var letters = Set<Character>()
        print("Set has \(letters.count) characters.")

        letters = ["a", "b"]

        print(letters)

        letters.insert("C")
        letters.insert("D")
        letters.insert("E")
        letters.insert("F")
        print(letters)

        for item in letters {
            print(item)
        }
    }

    func sorting() {
        print("\n------ sorting ------\n")
        var letters: Set = ["a", "b", "c", "D", "E", "F", "G", "H", "I"]

        print(letters.sorted())

        //sort vowels first
        print(letters.sorted { lhs, rhs in
            return ["a", "e", "i", "o", "u", "y"].contains(String(lhs).lowercased())
        })


        letters = []
        print(letters)
    }


    func basicOps() {
        print("\n------ basicOps ------\n")
        var set1: Set<Character> = ["a", "b", "c", "d"]
        var set2: Set<Character> = ["c", "d", "e", "f"]


        print("set1: \(set1.sorted())")
        print("set2: \(set2.sorted())")
        print("union: \(set1.union(set2).sorted())")
        print("intersection: \(set1.intersection(set2).sorted())")
        print("symmetricDifference: \(set1.symmetricDifference(set2).sorted())")
        print("a subtracting b: \(set1.subtracting(set2).sorted())")
    }

    func membershipAndEquality() {
        var set1: Set<Character> = ["a", "b"]
        var set2: Set<Character> = ["a", "b"]
        printRelationships(between: set1, and: set2)

        set1 = ["a", "b", "c"]
        set2 = ["a", "b"]
        printRelationships(between: set1, and: set2)
        printRelationships(between: set2, and: set1)

        set1 = ["a", "b"]
        set2 = ["c", "d", "e", "f"]
        printRelationships(between: set1, and: set2)

    }

    func printRelationships(between set1: Set<Character>, and set2: Set<Character>) {
        print("\n------ examine relations between sets ------")
        print("set1: \(set1)")
        print("set2: \(set2)\n")

        print("set1 isSuperset of set2: \(set1.isSuperset(of: set2))")
        print("set1 isSubset of set2: \(set1.isSubset(of: set2))")
        print("set1 isStrictSubset of set2: \(set1.isStrictSubset(of: set2))")
        print("set1 isDisjoint with set2: \(set1.isDisjoint(with: set2))")
    }

}
