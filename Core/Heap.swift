import Foundation

public class Heap<T> {
	private var start: HeapElement<T>?
	private var end: HeapElement<T>?
	public var count: Int = 0

	public init() {}

	public func enqueue(_ v: T) {
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

	public func dequeue() -> T? {
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
