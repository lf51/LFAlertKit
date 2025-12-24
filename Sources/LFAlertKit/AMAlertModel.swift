//
//  AMAlertModel.swift
//  LFAlertManager
//
//  Created by Calogero Friscia on 24/12/25.
//
import Foundation

/// Model representing a single alert presentation.
public struct AMAlertModel: Identifiable {
    
    /// Unique identifier used by SwiftUI.
    public let id: String
    
    /// Alert content provider.
    let content: any AMAlertCasePro
    
    /// Optional alert actions.
    let actions: [AMAlertActionModel]?
    
    public init(
        content: any AMAlertCasePro,
        actions: [AMAlertActionModel]?
    ) {
        self.id = UUID().uuidString
        self.content = content
        self.actions = actions
    }
}
