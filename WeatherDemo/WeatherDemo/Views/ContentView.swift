//
//  ContentView.swift
//  WeatherDemo
//
//  Created by Duy  Tran on 16/12/2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    var weatherManager = WeatherManager()
    @State var weather: ResponseBody?
    
    var body: some View {
        VStack{
            
            if let location = locationManager.location{
                if let weather = weather {
                    WeatherView(weather: weather)
                } else {
                    LoadingView().task {
                        do{
                            weather = try await weatherManager.getCurrentWeather(latitude: location.latitude, longtitude: location.longitude)
                        } catch{
                            print("Error getting weather: \(error)")
                        }
                    }
                }
            } else{
                if locationManager.isLoading {
                    LoadingView()
                } else{
                    WelcomeView().environmentObject(locationManager)
                }
                
            }
            
            
            
        }
        .background(Color(hue: 0.711, saturation: 0.82, brightness: 0.381, opacity: 0.599)).preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
