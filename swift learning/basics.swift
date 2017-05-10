import Foundation


public class Basics {

    init() {
        print("\n====== Basics ======\n")
    }

    func tuples() {
        typealias tuple = (Int, Int)



        let (a, b): tuple = (99,100)

        let (x, y) = (1, 2)
        print("x: \(x) y: \(y)")

        //create a tuple
        let http404Error = (404, "Not Found")
        print(http404Error)

        //decompose tuple
        let (statusCode, statusMessage) = http404Error
        print("status code: \(statusCode)")
        print("status msg: \(statusMessage)")

        //ignore _
        let (statusOnly, _) = http404Error
        print("status code only: \(statusOnly)")
        print("status code by index: \(http404Error.0)")


        //name elements of a tuple
        let httpOk = (code: 200, message: "OK")
        print("status code by name: \(httpOk.code)")
        print(httpOk)
    }


    func optionals() {
        print("-- OPTIONALS : Optional binding with if let / if var --")

        var possibleNumber : Int?
        possibleNumber = 123

        if let actualNumber = possibleNumber {
            print("actual number: \(actualNumber)")
        }
        else {
            print("no actual number")
        }

        if var actualNumberVar = possibleNumber {
            actualNumberVar += 1
            print("actual number incremented: \(actualNumberVar)")
        }

        if let a = Int("1"), var b = Int("2") {
            print("a: \(a), i: \(b)")
        }
        else {
            print("At least one of the optionals was nil")
        }


        print("\t\t : Implicitly unwrapped optionals")

        let possibleString: String? = "possible String"
        let forcedString: String = possibleString!

        //You can think of an implicitly unwrapped optional as giving permission for the optional
        //to be unwrapped automatically whenever it is used.
        let assumedString: String! = "assumedString"
        let implicitString: String = assumedString
        //implicitly unwrapped can still be tested via 'if let'
        if let definiteString = assumedString {
            print("definite string \(definiteString)")
        }
    }


    func errHandling() {
        do {
            try canThrow()
            doesntThrow()
        } catch {
        }
    }

    private func canThrow() throws {
    }
    private func doesntThrow() {
    }

}
