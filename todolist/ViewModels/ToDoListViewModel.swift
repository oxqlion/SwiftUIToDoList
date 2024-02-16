//
//  ToDoListViewModel.swift
//  todolist
//
//  Created by MacBook Pro on 15/02/24.
//

import FirebaseFirestore
import Foundation

class ToDoListViewModel: ObservableObject {
    
    @Published var showingNewItemView = false
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
