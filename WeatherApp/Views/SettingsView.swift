//
//  SettingsView.swift
//  WeatherApp
//
//  Created by Federico on 03/02/2022.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var weather: WeatherAPI
    @State private var city = ""
    
    var body: some View {
        Form {
            Section("Settings") {
                TextField("Enter a city name", text: $city)

                Button("Submit") {
                    weather.changeCity(cityName: city)
                }       
            }
            Section("Status") {
                Text(weather.status)
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .environmentObject(WeatherAPI())
    }
}
