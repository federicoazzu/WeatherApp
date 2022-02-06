//
//  ContentView.swift
//  WeatherApp
//
//  Created by Federico on 03/02/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var weather = WeatherAPI()
    
    var body: some View {
        HomeView()
            .onAppear {
                if Internet.isConnectedToNetwork() {
                    // Retrieve API Data
                    weather.getData()
                }
            }
            .environmentObject(weather)
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
