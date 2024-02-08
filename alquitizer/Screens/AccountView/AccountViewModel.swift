//
//  AccountViewModel.swift
//  alquitizer
//
//  Created by Mauricio Fontana on 08/02/24.
//

import Foundation

final class AccountViewModel: ObservableObject {
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var birthday = Date()

    @Published var extraNapkins = false
    @Published var frequentRefils = false

    @Published var alertItem: AlertItem?

    var isValidForm: Bool {
        guard !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }

        guard email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }

        return true
    }

    func saveChanges() {
        guard isValidForm else { return }

        print("Save Changes to the server")
    }
}
