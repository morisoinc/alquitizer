//
//  AccountView.swift
//  alquitizer
//
//  Created by Mauricio Fontana on 07/02/24.
//

import SwiftUI

struct AccountView: View {
    @StateObject private var viewModel = AccountViewModel()

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $viewModel.firstName)
                    TextField("Last Name", text: $viewModel.lastName)
                    TextField("Email", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday", selection: $viewModel.birthday, displayedComponents: .date)

                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                }

                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $viewModel.extraNapkins)
                    Toggle("Frequent Refils", isOn: $viewModel.frequentRefils)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            }
            .navigationTitle("🪪 Account")
        }
        .alert(item: $viewModel.alertItem, content: { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        })
    }
}

#Preview {
    AccountView()
}
