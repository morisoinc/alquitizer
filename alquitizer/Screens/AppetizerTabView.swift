//
//  ContentView.swift
//  alquitizer
//
//  Created by Mauricio Fontana on 07/02/24.
//

import SwiftUI

struct AppetizerTabView: View {
    @EnvironmentObject var order: Order

    var body: some View {
        TabView {
            TabView {
                AppetizerListView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                AccountView()
                    .tabItem {
                        Label("Account", systemImage: "person")
                    }
                OrderView()
                    .tabItem {
                        Label("Order", systemImage: "bag")
                    }
                    .badge(order.items.count)
            }
        }
    }
}

#Preview {
    AppetizerTabView()
}
