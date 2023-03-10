//
//  ContentView.swift
//  decodeJsonFiles
//
//  Created by Gabriel Paschoal on 09/03/23.
//

import SwiftUI

struct ContentView: View {
    var people = allPerson
    var body: some View {
        
        VStack {
            ForEach(people, id: \.name) { person in
                Text(person.name ?? "Name")
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
