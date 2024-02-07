//
//  ContentView.swift
//  alquitizer
//
//  Created by Mauricio Fontana on 07/02/24.
//

import SwiftUI

struct AlquitizerTabView: View {
    var body: some View {
        TabView {
            TabView {
                AlquitizerListView()
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
            }
        }
        .accentColor(Color("brandPrimary"))
    }
}

#Preview {
    AlquitizerTabView()
}
