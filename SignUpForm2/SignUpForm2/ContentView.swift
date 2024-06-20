//
//  ContentView.swift
//  SignUpForm2
//
//  Created by 육현서 on 6/20/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = SignUpFormViewModel()
    
    var body: some View {
        Form {
            Section {
                TextField("Username", text: $viewModel.username)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
            } footer: {
                Text(viewModel.usernameMessage)
                    .foregroundStyle(Color.red)
            }
            
            Section {
                Button("Sign up") {
                    print("Signing up as \(viewModel.username)")
                }
                .disabled(!viewModel.isValid)
            }
        }
        .alert("Please update", isPresented: $viewModel.showUpdateDialog, actions: {
            Button("Upgrade") {
                
            }
            Button("Not now", role: .cancel) {}
        }, message: {
            Text("It looks like you're using an older version of this app. Please update your app.")
        })
    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
}
