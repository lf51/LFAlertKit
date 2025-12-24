//
//  AMAlertActionModel.swift
//  LFAlertManager
//
//  Created by Calogero Friscia on 24/12/25.
//
import SwiftUI

/// Represents a single alert button action.
public struct AMAlertActionModel {
    
    /// Button title.
    let label: String
    
    /// SwiftUI button role.
    let role: ButtonRole
    
    /// Encapsulated action logic.
    private let code: () -> Void
    
    public init(
        label: String,
        role: ButtonRole,
        action: @escaping () -> Void = {}
    ) {
        self.label = label
        self.role = role
        self.code = action
    }
    
    /// Executes the action on the main actor.
    @MainActor
    public func perform() {
        code()
    }
}
