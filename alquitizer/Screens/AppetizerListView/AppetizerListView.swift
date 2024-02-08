//
//  AlquitizerListView.swift
//  alquitizer
//
//  Created by Mauricio Fontana on 07/02/24.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizersListViewModel()

    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            viewModel.isShowingDetail = true
                            viewModel.selectedAppetizer = appetizer
                        }
                }
                .navigationTitle("🫒 Appetizers")
                .disabled(viewModel.isShowingDetail)
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)

            if viewModel.isShowingDetail && viewModel.selectedAppetizer != nil {
                AppetizerDetailView(appetizer: viewModel.selectedAppetizer!,
                                    isShowingDetail: $viewModel.isShowingDetail)
            }
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AppetizerListView()
}
