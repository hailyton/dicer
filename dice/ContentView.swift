//
//  ContentView.swift
//  dice
//
//  Created by halley on 22/11/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var names: [String] = ["Elisha", "Andre", "Jasmine", "Po-Chun"]
    @State private var nameToAdd = ""
    
    
    var body: some View {
        
        //      DiceViews()
        
        VStack {
            List {
                ForEach(names, id: \.self) { name in
                    
                    Text(name)
                }
            }
            TextField("Add name", text: $nameToAdd).autocorrectionDisabled().onSubmit {
                
                if !nameToAdd.isEmpty {
                    names.append(nameToAdd)
                    nameToAdd = ""
                }
            }
            
        }
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
