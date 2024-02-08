//
//  APButton.swift
//  alquitizer
//
//  Created by Mauricio Fontana on 08/02/24.
//

import SwiftUI

struct APButton: View {
    let title: LocalizedStringKey

    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)
            .padding(.bottom, 30)
    }
}

#Preview {
    APButton(title: "Add to order")
}
