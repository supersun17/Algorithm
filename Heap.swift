import Foundation

class Heap<T> {
	private var start: HeapElement<T>?
	private var end: HeapElement<T>?
	var count: Int = 0

	func enqueue(_ v: T) {
		let newElement = HeapElement.init(with: v)
		if start == nil {
			start = newElement
			end = newElement
		} else {
			end?.next = newElement
			end = end?.next
		}
		count += 1
	}

	func dequeue() -> T? {
		let firstValue = start?.value
		start = start?.next
		count = max(0,count - 1)
		return firstValue
	}
}

fileprivate class HeapElement<T> {
	var next: HeapElement?
	var value: T!
	init(with v: T) {
		value = v
	}
}
