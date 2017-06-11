//: Playground - noun: a place where people can play

func twoSumProblem(_ a: [Int], k: Int) -> ((Int, Int))? {
    var mapRemainingAmountToIndex = [Int:Int]()
    
    for (myIndex, myAmount) in a.enumerated() {
        let theOtherAmount = k-myAmount
        if let theOtherIndex = mapRemainingAmountToIndex[myAmount] {
            return  (theOtherIndex, myIndex)
        }
        mapRemainingAmountToIndex[theOtherAmount] = myIndex
    }
    return nil
}

let a = [7, 100, 2, 21, 12, 10, 22, 14, 3, 4, 8, 4, 9]
if let (i, j) = twoSumProblem(a, k: 33) {
    print(i)            // 3
    print(a[i])         // 21
    print(j)            // 4
    print(a[j])         // 12
    print(a[i] + a[j])  // 33
}

twoSumProblem(a, k: 37)  // nil
