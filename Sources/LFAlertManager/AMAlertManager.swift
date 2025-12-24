// The Swift Programming Language
// https://docs.swift.org/swift-book

import Combine

@MainActor
public class AMAlertManager {
    
    public static let shared = AMAlertManager()
    
    private let subject = PassthroughSubject<AMAlertModel, Never>()

    public var publisher: AnyPublisher<AMAlertModel, Never> {
           subject.eraseToAnyPublisher()
       }

       public func post(_ alert: AMAlertModel) {
           subject.send(alert)
       }
    
}
