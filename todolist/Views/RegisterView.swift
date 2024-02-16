//
//  RegisterView.swift
//  todolist
//
//  Created by MacBook Pro on 15/02/24.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewModel()
    
    var body: some View {
        VStack {
            
            HeaderView(
                title: "Start Writing Now",
                subtitle: "Create a new account",
                angle: -15,
                background: .orange
            )
            .offset(y: -40)
            
            Form {
                TextField("Full Name", text: $viewModel.fullName)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .autocorrectionDisabled()
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                CTAButton(title: "Create Account", background: .green) {
                    viewModel.register()
                }
                    .padding([.top, .bottom], 15)
            }
        }
    }
}

#Preview {
    RegisterView()
}
