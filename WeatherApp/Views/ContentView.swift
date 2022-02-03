//
//  ContentView.swift
//  WeatherApp
//
//  Created by Federico on 03/02/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HomeView()
            .onAppear {
                if Internet.isConnectedToNetwork() {
                    // Retrieve API Data
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}