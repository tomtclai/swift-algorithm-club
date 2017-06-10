
import Foundation

// must be sorted ascendingly
public func binarySearch<T: Comparable>(_ a:[T], target: T) -> Int? {
    return binarySearch(a, target: target, range: 0..<a.count)
}

private func binarySearch<T: Comparable>(_ array:[T], target: T, range: Range<Int>) -> Int? {
    // base case 1, no match
    guard range.lowerBound < range.upperBound else {
        return nil
    }
    let length = range.upperBound - range.lowerBound
    let halfLength = length / 2
    let midIndex = range.lowerBound + halfLength
    // base case 2, exact match
    guard target != array[midIndex] else {
        return midIndex
    }
    
    // recursive case
    if target < array[midIndex] {
        return binarySearch(array, target: target, range: 0..<midIndex)
    } else {
        return binarySearch(array, target: target, range: midIndex+1..<range.upperBound)
        // 0 1 2 3 4 target: 3
        // 1,2,3,4 range: 0..<4, midIndex: 2
        //   2,3,4 range: 1..<4, midIndex: 2
        //
        
    }
}

public func iteartiveBinarySearch<T: Comparable>(_ array:[T], target: T) -> Int? {
    var minIndex = 0
    var maxIndex = array.count - 1 // 3-1 = 2
    
    while (maxIndex >= minIndex) {
        let middleIndex = minIndex + ( maxIndex - minIndex) / 2
        // compare middle with target
        if target == array[middleIndex] {
            // target equals to middle? return index
            return middleIndex
        } else if target < array[middleIndex] {
            // target less than middle? do this over again with the left half
            maxIndex = middleIndex
        } else {
            // otherwise, do this over again with the right half
            minIndex = middleIndex+1
        }
        // 0 1 2
        // 1,2,3 target 3
        // min = 0 max = 2 mid =  1
        // min = 2 max = 2 mid =  2
        // return 2
    }
    // nothing is found
    return nil
}
