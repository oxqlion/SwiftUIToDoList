//
//  todolistApp.swift
//  todolist
//
//  Created by MacBook Pro on 15/02/24.
//

import FirebaseCore
import SwiftUI

@main
struct todolistApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
