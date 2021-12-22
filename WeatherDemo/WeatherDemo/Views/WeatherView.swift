//
//  WeatherView.swift
//  WeatherDemo
//
//  Created by Duy  Tran on 16/12/2021.
//

import SwiftUI

struct WeatherView: View {
    var weather: ResponseBody
    
    
    var body: some View {
        ZStack(alignment: .leading) {
            VStack{
                VStack(alignment: .leading, spacing: 5) {
                    Text(weather.name).bold().font(.title)
                    Text("Today, \(Date().formatted(.dateTime.month().day().hour().minute()))").fontWeight(.light)
                    Spacer()
                    
                    VStack{
                        HStack{
                            VStack(spacing: 20){
                                Image(systemName: "cloud").font(.system(size: 40))
                                Text(weather.weather[0].main)
                            }.frame(width: 150, alignment: .leading)
                            
                            Spacer()

                            Text(weather.main.feels_like.roundDouble() + "°c").font(.system(size: 50)).fontWeight(.bold).padding()

                        }
                        
                        Spacer()
                                .frame(height:  50)

                            AsyncImage(url: URL(string: "https://uphinh.vn/images/2021/12/16/4168a29c2c3e17789968e1509504b7f5.png")) { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 350)
                            } placeholder: {
                                ProgressView()
                            }

                            Spacer()
                        
                    }
                    .frame(maxWidth: .infinity)
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding().frame(maxWidth: .infinity, alignment: .leading)
            
            VStack{
                Spacer()
                
                VStack(alignment: .leading, spacing: 20){
                    Text("Weather now").bold().padding(.bottom)
                    
                    HStack{
                        WeatherRow(logo: "thermometer", name: "Min temp", value:(weather.main.tempMin.roundDouble() + "°c"))
                        Spacer()
                        WeatherRow(logo: "thermometer", name: "Max temp", value:(weather.main.tempMax.roundDouble() + "°c"))
                    }
                    HStack{
                        WeatherRow(logo: "wind", name: "Wind speed", value:(weather.wind.speed.roundDouble() + "m/s"))
                        Spacer()
                        WeatherRow(logo: "humidity", name: "Humidity", value:(weather.main.humidity.roundDouble() + "°"))
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading).padding().padding(.bottom, 20).foregroundColor(Color(hue: 0.711, saturation: 0.82, brightness: 0.381, opacity: 0.599)).background(.white).cornerRadius(20, corners: [.topLeft, .topRight])
                
            }
            
        }
        .edgesIgnoringSafeArea(.bottom)
        .background(Color(hue: 0.711, saturation: 0.82, brightness: 0.381, opacity: 0.599)).preferredColorScheme(.dark)

    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
