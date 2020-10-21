//
//  BinarySearch.swift.
//  Created by Frank McAuley on 10/21/20.
//

import Foundation

class BinarySearch {
    func search(_ values:[Int], _ term: Int) -> Int? {
        var start = values.startIndex
        var end = values.endIndex - 1
        while start <= end {
            let mid = (start + end)/2
            if values[mid] == term {
                return term
            }
            if values[mid] > term {
                end = mid - 1
            }
            if values[mid] < term {
                start = mid + 1
            }
        }
        return nil
    }
}

extension Array where Element: Comparable {
   
    public mutating func binarySearch(forElement key: Element) -> Bool {
       
        var start = self.startIndex
        var end = self.endIndex - 1
        
        while start <= end {
            let mid = (start + end)/2
            
            if self[mid] == key {
                return true
            }
            if self[mid] > key {
                end = mid - 1
            }
            if self[mid] < key {
                start = mid + 1
            }
        }
        return false
    }
}
