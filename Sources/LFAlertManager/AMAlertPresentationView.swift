//
//  AMAlertPresentationView.swift
//  LFAlertManager
//
//  Created by Calogero Friscia on 24/12/25.
//
import SwiftUI

@MainActor
@ViewBuilder public func vbAlertBottonPresentation(_ alertActions:[AMAlertActionModel]?) -> some View {
    
    if let alertActions {
        
        ForEach(alertActions,id:\.label) { action in
            
            Button(role:action.role) {
               // action.code()
                action.perform()
            } label: {
                Text(action.label)
            }
            
            
        }
    }
    
}
