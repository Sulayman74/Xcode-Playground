//
//  TestPlaygroundApp.swift
//  TestPlayground
//
//  Created by Sirikone KEOHAVONG on 29/12/2023.
//

import SwiftUI

@main
struct TestPlaygroundApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                List{
                    NavigationLink("Navigation",destination: ContentView().navigationTitle("Content View"))
                    
                }
 
                
            }
        }
    }
}


