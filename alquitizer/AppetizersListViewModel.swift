//
//  AppetizersListViewModel.swift
//  alquitizer
//
//  Created by Mauricio Fontana on 08/02/24.
//

import Foundation
import SwiftUI

class AppetizersListViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    
    init() {
        getAppetizers()
    }
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}
