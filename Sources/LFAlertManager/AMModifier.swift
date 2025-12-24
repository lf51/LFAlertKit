//
//  AMModifier.swift
//  LFAlertManager
//
//  Created by Calogero Friscia on 24/12/25.
//

import SwiftUI

public struct AMAlertReceiverModifier: ViewModifier {
    
    @State private var showAlert: Bool = false
    @State private var alert: AMAlertModel?
    
    public init() {}
    
    public func body(content: Content) -> some View {
    
         content
            .onReceive(AMAlertManager.shared.publisher) { alert in
                self.alert = alert
                self.showAlert = true
            }
            .alert(alert?.caseType.getAlertTitle() ?? "No Title",
                   isPresented:$showAlert,
                   presenting:alert,
                   actions: { currentAlert in
                
                vbAlertBottonPresentation(currentAlert.actions)

                
            }, message: { currentAlert in
                Text(currentAlert.caseType.getBodyMessage())
            })
    }
}
