//
//  alquitizerApp.swift
//  alquitizer
//
//  Created by Mauricio Fontana on 07/02/24.
//

import SwiftUI

@main
struct alquitizerApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
