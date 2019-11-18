//
//  AddView.swift
//  Noty
//
//  Created by Abdullah Alhaider on 18/11/2019.
//  Copyright © 2019 Abdullah Alhaider. All rights reserved.
//

import SwiftUI

struct AddView: View {
    @Environment(\.managedObjectContext) var moc
    @Binding var isPresented: Bool
    @State private var text = ""
    @State private var isImportant = false
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter your note", text: $text)
                    Toggle(isOn: $isImportant) {
                        Text("Is Important?")
                    }
                }
                
                Section {
                    Button("Add") {
                        self.addNewNoty()
                    }
                }
                .disabled(text.count < 2)
            }
            .navigationBarTitle("Add new Noty")
        }
    }
    
    func addNewNoty() {
        self.isPresented = false
        
        // coreData
        let newNote = Noty(context: self.moc)
        newNote.text = text
        newNote.isImportent = isImportant
        
        try? moc.save()
    }
}

// struct AddView_Previews: PreviewProvider {
//     static var previews: some View {
//         AddView()
//     }
// }
