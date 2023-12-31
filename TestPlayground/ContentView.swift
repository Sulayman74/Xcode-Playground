//
//  ContentView.swift
//  TestPlayground
//
//  Created by Sirikone KEOHAVONG on 29/12/2023.
//

import SwiftUI

struct ContentView: View {
    @State var greetings = "Hello World"
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(greetings)
          RegistrationForm()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
