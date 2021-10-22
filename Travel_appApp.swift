//
//  Travel_appApp.swift
//  Travel_app
//
//  Created by Marcin Basinski on 06/10/2021.
//

import SwiftUI

@main
struct Travel_appApp: App {
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView {
            NavigationView {
                ContentView(location: locations.primary )
        }
            .tabItem { Image(systemName: "airplane.circle.fill")
                Text("Discover")
            }
                
                NavigationView{
                    WorldView()
                }
                .tabItem{
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                NavigationView{
                    TipsView()
                }
                .tabItem { Image(systemName: "list.bullet")
                    Text("Tips")
                }
            }
                .environmentObject(locations)
            }
        
    }
}
