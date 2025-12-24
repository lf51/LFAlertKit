// The Swift Programming Language
// https://docs.swift.org/swift-book

import Combine

/// Centralized alert dispatcher.
///
/// Acts as a single source of truth for alert events and exposes
/// a Combine publisher that SwiftUI views can subscribe to.
@MainActor
public class AMAlertManager {
    
    /// Shared singleton instance.
    public static let shared = AMAlertManager()
    
    /// Internal subject used to broadcast alert events.
    private let subject = PassthroughSubject<AMAlertModel, Never>()

    /// Public read-only publisher for alert events.
    public var publisher: AnyPublisher<AMAlertModel, Never> {
        subject.eraseToAnyPublisher()
    }

    /// Posts a new alert event.
    public func post(_ alert: AMAlertModel) {
        subject.send(alert)
    }
}
