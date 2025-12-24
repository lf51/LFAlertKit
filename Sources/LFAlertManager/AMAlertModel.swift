//
//  AMAlertModel.swift
//  LFAlertManager
//
//  Created by Calogero Friscia on 24/12/25.
//
import Foundation

public struct AMAlertModel:Identifiable {
    
    public let id:String
    let caseType: any AMAlertCasePro
    
    let actions:[AMAlertActionModel]?
    
    public init(caseType: any AMAlertCasePro,actions:[AMAlertActionModel]?) {
        self.id = UUID().uuidString
        self.caseType = caseType
        self.actions = actions
    }
    
}

