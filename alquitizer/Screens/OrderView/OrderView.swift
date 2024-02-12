//
//  OrderView.swift
//  alquitizer
//
//  Created by Mauricio Fontana on 07/02/24.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order

    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(order.items) { appetizer in
                        AppetizerListCell(appetizer: appetizer)
                    }
                    .onDelete(perform: order.deleteItems)
                }
                .listRowSeparator(.hidden)
                .listStyle(.plain)

                Button {
                    // Place order
                } label: {
                    APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                }
            }
            .overlay {
                if order.items.isEmpty {
                    ContentUnavailableView("You have no items in your order", systemImage: "cart.badge.plus")
                }
            }
            .navigationTitle("🛎️ Orders")
        }
    }
}

#Preview {
    OrderView()
}
