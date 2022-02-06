//
//  HomeView.swift
//  WeatherApp
//
//  Created by Federico on 03/02/2022.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var weather: WeatherAPI
    
    var body: some View {
        NavigationView {
            TabView {
                CurrentWeatherView()
                    .tabItem {
                        Label("Weather", systemImage: "sun.min.fill")
                    }
                SettingsView()
                    .tabItem {
                        Label("Settings", systemImage: "gearshape.fill")
                    }
            }
            .navigationTitle(weather.currentCity)
            .accentColor(.orange)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(WeatherAPI())
    }
}
