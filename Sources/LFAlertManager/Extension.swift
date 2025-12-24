//
//  Extension.swift
//  LFAlertManager
//
//  Created by Calogero Friscia on 24/12/25.
//
import SwiftUI

public extension View {
    
    func amAlertReceiver() -> some View {
        
        modifier(AMAlertReceiverModifier())
    }
}
