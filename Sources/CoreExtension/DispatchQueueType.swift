import Foundation

/// DispatchQueueType protocol used to inject DispatchQueue
public protocol DispatchQueueType {
    func async(execute work: @escaping @convention(block) () -> Void)
}

extension DispatchQueue: DispatchQueueType {
    /// Implementation of `DispatchQueueType`
    /// - Parameter work: The callback
    public func async(execute work: @escaping @convention(block) () -> Void) {
        async(group: nil, qos: .unspecified, flags: [], execute: work)
    }
 }
