//
//  ContentView.swift
//  Color picker
//
//  Created by Brandy Nguyen on 10/22/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @EnvironmentObject var persistence: Persistence

    var body: some View {
        VStack {
            // Color Box Preview
            Rectangle()
                .foregroundColor(Color(
                    red: persistence.redSwitch ? Double(persistence.redValue) : 0,
                    green: persistence.greenSwitch ? Double(persistence.greenValue) : 0,
                    blue: persistence.blueSwitch ? Double(persistence.blueValue) : 0
                ))
                .frame(height: 200)
                .padding()
            
            // Red Controls
            HStack {
                Toggle(isOn: $persistence.redSwitch) {
                    Text("Red")
                }
                .padding()
                
                Slider(value: $persistence.redValue, in: 0...1)
                    .disabled(!persistence.redSwitch)
                    .padding()
                
                TextField("Red", value: $persistence.redValue, formatter: NumberFormatter())
                    .disabled(!persistence.redSwitch)
                    .frame(width: 50)
                    .padding()
            }

            // Green Controls
            HStack {
                Toggle(isOn: $persistence.greenSwitch) {
                    Text("Green")
                }
                .padding()
                
                Slider(value: $persistence.greenValue, in: 0...1)
                    .disabled(!persistence.greenSwitch)
                    .padding()
                
                TextField("Green", value: $persistence.greenValue, formatter: NumberFormatter())
                    .disabled(!persistence.greenSwitch)
                    .frame(width: 50)
                    .padding()
            }

            // Blue Controls
            HStack {
                Toggle(isOn: $persistence.blueSwitch) {
                    Text("Blue")
                }
                .padding()
                
                Slider(value: $persistence.blueValue, in: 0...1)
                    .disabled(!persistence.blueSwitch)
                    .padding()
                
                TextField("Blue", value: $persistence.blueValue, formatter: NumberFormatter())
                    .disabled(!persistence.blueSwitch)
                    .frame(width: 50)
                    .padding()
            }

            // Reset Button
            Button(action: {
                persistence.resetValues()
            }) {
                Text("Reset")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environmentObject(Persistence())
                .previewDevice("iPad Air (5th generation)")
            ContentView()
                .environmentObject(Persistence())
                .previewDevice("iPad Pro (12.9-inch)")
        }
    }
}
