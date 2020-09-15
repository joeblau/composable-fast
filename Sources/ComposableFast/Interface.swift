import Foundation
import ComposableArchitecture
import WebKit

public struct FastManager {
    
    public enum Action: Equatable {
        case didReceive(message: WKScriptMessage)
    }
    
    var create: (AnyHashable) -> Effect<Action, Never> = { _ in _unimplemented("create") }
    
    var destroy: (AnyHashable) -> Effect<Never, Never> = { _ in _unimplemented("destroy") }
    
    var startTest: (AnyHashable) -> Effect<Never, Never> = { _ in _unimplemented("startTest") }
    
    var stopTest: (AnyHashable) -> Effect<Never, Never> = { _ in _unimplemented("stopTest") }

    public func create(id: AnyHashable, queue: DispatchQueue? = nil, options: [String : Any]? = nil) -> Effect<Action, Never> {
        self.create(id)
    }
    
    public func destroy(id: AnyHashable) -> Effect<Never, Never> {
        self.destroy(id)
    }
    
    public func startTest(id: AnyHashable) -> Effect<Never, Never> {
        self.startTest(id)
    }
    
    public func stopTest(id: AnyHashable) -> Effect<Never, Never> {
        self.stopTest(id)
    }
}
