//
//  Protocol.swift
//  LFAlertManager
//
//  Created by Calogero Friscia on 24/12/25.
//

/// Protocol defining alert textual content.
public protocol AMAlertCasePro {
    
    func getAlertTitle() -> String
    func getBodyMessage() -> String
}
