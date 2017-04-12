//
// Created by Karel Herink on 12/04/2017.
// Copyright (c) 2017 Karel Herink. All rights reserved.
//

import Foundation

class CollectionsSets {

    init() {
        print("====== Collections: Sets ======")
    }

    func initialization() {
        var letters = Set<Character>()
        print("letters: \(letters) has \(letters.count) elements")

        letters.insert("a")
        print("letters: \(letters) has \(letters.count) elements")

        letters = []
        print("letters: \(letters) has \(letters.count) elements")

        letters = ["a", "b", "a"]
        print("letters: \(letters) has \(letters.count) elements")

        var genres: Set = ["Rock", "Hip Hop", "Classical"]
        print("genres: \(genres) has \(genres.count) elements")

        for genre in genres.sorted() {
            print(genre)
        }

        for genre in genres.sorted().reversed() {
            print(genre)
        }

        //sort by the last character ascending
        for genre in genres.sorted(by: { lhs, rhs in
            return lhs[lhs.index(before: lhs.endIndex)] < rhs[rhs.index(before: rhs.endIndex)]
        }) {
            print(genre)
        }

    }


}
