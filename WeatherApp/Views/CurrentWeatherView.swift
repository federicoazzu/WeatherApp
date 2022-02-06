//
//  CurrentWeatherView.swift
//  WeatherApp
//
//  Created by Federico on 03/02/2022.
//

import SwiftUI

struct CurrentWeatherView: View {
    @EnvironmentObject var weather: WeatherAPI
    
    
    var body: some View {
        VStack {
            List {
                ForEach(weather.weatherData.sorted(by: <), id: \.key) { key, value in
                    HStack {
                        Spacer()
                        Text("\(formatTS(Int(key) ?? 0))")
                            .foregroundColor(.gray)
                    }
                    
                 
                }
            }
            .listStyle(GroupedListStyle())
        }
    }
}

struct CurrentWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentWeatherView()
            .environmentObject(WeatherAPI())
    }
}
