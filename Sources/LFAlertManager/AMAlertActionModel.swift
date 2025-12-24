//
//  AMAlertActionModel.swift
//  LFAlertManager
//
//  Created by Calogero Friscia on 24/12/25.
//
import SwiftUI

public struct AMAlertActionModel {
    
    let label:String
    let role:ButtonRole
    private let code:() -> Void
    
    public init(label: String,role:ButtonRole, action:@escaping () -> Void = {}) {
    
        self.label = label
        self.role = role
        self.code = action
    }
    
    @MainActor
    public func perform() {
        code()
    }
}
