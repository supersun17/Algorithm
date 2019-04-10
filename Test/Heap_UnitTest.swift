import Foundation
import XCTest

class HeapTest: XCTestCase {
	override func setUp() {
		// Put setup code here. This method is called before the invocation of each test method in the class.
	}

	override func tearDown() {
		// Put teardown code here. This method is called after the invocation of each test method in the class.
	}

	func testInt() {
		let heap = Heap<Int>()
		let testElements: [Int] = [1,4,2,6,8,4,0,10,12]

		for i in testElements {
			heap.enqueue(i)
		}
		XCTAssert(heap.count == testElements.count, "\(heap.count) does not match total elements in original array")

		var compareArray: [Int] = []
		while heap.count > 0 {
			compareArray.append(heap.dequeue()!)
		}
		var equal: Bool = true
		for i in 0..<testElements.count {
			if compareArray[i] != testElements[i] {
				equal = false
				break
			}
		}
		XCTAssert(equal == true, "heap doesn't has same order, same number")
	}
}

HeapTest.defaultTestSuite.run()

