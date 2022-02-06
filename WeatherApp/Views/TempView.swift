//
//  TempView.swift
//  WeatherApp
//
//  Created by Federico on 06/02/2022.
//

import SwiftUI

struct TempView: View {
    var timeStamp: String
    var temperature: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("\(temperature) C")
                    .font(.title)
                    .foregroundColor(tempColor(temperature))
                    .bold()
                Spacer()
                Text("\(formatTS(Int(timeStamp) ?? 0))")
                    .foregroundColor(.gray)
            }
            Text(tempText(temperature))
                .foregroundColor(.black)
        }
        .padding()
    }
    
    func tempColor(_ temp: String) -> Color {
        let intTemp = Int(temp) ?? 0
        
        switch intTemp {
        case -100..<14:
            return .blue
        case 14..<20:
            return .orange
        case 20..<100:
            return .red
        default:
            return .black
        }
    }
    
    func tempText(_ temp: String) -> String {
        let intTemp = Int(temp) ?? 0
        
        switch intTemp {
        case -100..<10:
            return "It's cold outside! Remember to wear a jacket :)"
        case 10..<20:
            return "What comfortable weather! If it's not, raining, why not go for a walk?"
        case 20..<100:
            return "It's hot outside! Remember to stay hydrated."
        default:
            return "Uh oh! I wasn't ready for this..."
        }
    }
}

struct TempView_Previews: PreviewProvider {
    static var previews: some View {
        TempView(timeStamp: "0000", temperature: "25")
    }
}
