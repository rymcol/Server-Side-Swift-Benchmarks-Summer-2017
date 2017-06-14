//
//  JSONGenerator.swift
//  App
//
//  Created by Ryan Collins on 6/12/17.
//

#if os(Linux)
    import SwiftGlibc
    
    public func arc4random_uniform(_ max: UInt32) -> Int32 {
        return (SwiftGlibc.rand() % Int32(max-1)) + 1
    }
#endif

struct JSONCreator {
    func generateJSON() -> [String: Int] {
        
        var finalJSON = [String: Int]()
        
        for i in 1...10 {
            let randomNumber = Int(arc4random_uniform(UInt32(1000)))
            finalJSON["Test Number \(i)"] = randomNumber
        }
        
        return finalJSON
    }
}
