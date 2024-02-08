//
//  AlquitizerListView.swift
//  alquitizer
//
//  Created by Mauricio Fontana on 07/02/24.
//

import SwiftUI

struct AppetizerListView: View {
    
    @ObservedObject var viewModel = AppetizersListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
                .navigationTitle("🫒 Appetizers")
        }
    }
}

#Preview {
    AppetizerListView()
}
