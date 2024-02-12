//
//  CustomModifiers.swift
//  alquitizer
//
//  Created by Mauricio Fontana on 12/02/24.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.accentColor)
            .controlSize(.large)
    }
}
