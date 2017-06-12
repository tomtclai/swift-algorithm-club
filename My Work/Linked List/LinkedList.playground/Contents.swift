//: # Linked Lists

// For best results, don't forget to select "Show Rendered Markup" from XCode's "Editor" menu

//: Linked List Class Declaration:
public final class LinkedList<T> {
    public class LinkedListNode<T> {
        var value: T
        var next: LinkedListNode?
        weak var previous: LinkedListNode?
        
        public init(value: T) {
            self.value = value
        }
    }
    public typealias Node = LinkedListNode<T>
    
    private var head:  Node?
    
    public init() {}
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var first: Node? {
        return head
    }
    
    public var last: Node? {
        guard var node = head else {
            return nil // head is nil
        }
        
        // while node.next is not nil... advance pointer
        while case let next? = node.next {
            node = next
        }
        return node
    }
    
    public var count: Int {
        guard var node = head else {
            return 0
        }
        var count = 1
        while case let next? = node.next {
            node = next
            count = count + 1
        }
        return count
    }
    
    public func node(at index: Int) -> Node? {
        guard index >= 0 else {
            return nil
        }
        var node = head
        var i = index
        while node != nil {
            if  i  == 0 { return node }
             i  =  i  - 1
            node = node?.next
        }
        return nil
    }
}

