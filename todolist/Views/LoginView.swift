//
//  LoginView.swift
//  todolist
//
//  Created by MacBook Pro on 15/02/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                
                HeaderView(
                    title: "Swift To Do List",
                    subtitle: "By Rafi",
                    angle: 15,
                    background: .pink
                )
                
                // Login Form
                
                Form {
                    
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .autocorrectionDisabled()
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    CTAButton(
                        title: "Log In",
                        background: .blue
                    ) {
                        viewModel.login()
                    }
                    .padding([.top, .bottom], 15)
                }
                
                // Create Account Button
                
                VStack {
                    Text("New around here ?")
                    NavigationLink("Create an account", destination: RegisterView())
                }
                .padding(.bottom, 30)
            }
        }
    }
}

#Preview {
    LoginView()
}
