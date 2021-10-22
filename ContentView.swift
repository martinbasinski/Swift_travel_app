//
//  ContentView.swift
//  TravelJourney
//
//  Created by Marcin Basinski on 29/09/2021.
//  Copyright © 2021 Marcin Basinski. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let location: Location //passing whole object
    
    var body: some View {
    ScrollView{
        Image(location.heroPicture)
        .resizable()
        .scaledToFit()
        
        Text(location.name)
            .font(.largeTitle)
            .bold()//zwieksza font size
            .multilineTextAlignment(.center)
        
        Text(location.country)
            .font(.title)
            .foregroundColor(.secondary)
        
        Text(location.description)
            .padding(.horizontal)
        
        Text("Did you know")
            .font(.title)
            .bold()
            .padding(.top)
        
        Text(location.more)
        }
    .navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(location:
                Location.example)
        }
    }
}

