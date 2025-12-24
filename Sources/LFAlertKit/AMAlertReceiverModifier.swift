//
//  AMModifier.swift
//  LFAlertManager
//
//  Created by Calogero Friscia on 24/12/25.
//

import SwiftUI

/// ViewModifier responsible for listening to alert events
/// and presenting SwiftUI alerts accordingly.
struct AMAlertReceiverModifier: ViewModifier {
    
    @State private var showAlert: Bool = false
    @State private var alert: AMAlertModel?
    
    init() {}
    
    func body(content: Content) -> some View {
        content
            .onReceive(AMAlertManager.shared.publisher) { alert in
                self.alert = alert
                self.showAlert = true
            }
            .alert(
                alert?.content.getAlertTitle() ?? "No Title",
                isPresented: $showAlert,
                presenting: alert,
                actions: { currentAlert in
                    vbAlertBottonPresentation(currentAlert.actions)
                },
                message: { currentAlert in
                    Text(currentAlert.content.getBodyMessage())
                }
            )
    }
}

