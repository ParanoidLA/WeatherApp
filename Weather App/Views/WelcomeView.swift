//
//  WelcomeView.swift
//  Weather App
//
//  Created by Lakshya Agrawal on 17/04/24.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager:
    LocationManager
    var body: some View {
        VStack{
            VStack(spacing: 20){
                Text("Welcome to the weather app")
                    .bold().font(.title)
                Text("Please share your location to fetch weather")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation){
                locationManager.requestLocation()
                
            }
            .cornerRadius(30)
            .symbolVariant(/*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)
    }
}

#Preview {
    WelcomeView()
}
