//
//  SettingsView.swift
//  Avocados
//
//  Created by Alex on 12/07/2022.
//

import SwiftUI

struct SettingsTabItemView: View {
    
    // MARK: - Properties
    
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    
    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            
            // MARK: - Header
            
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            } //: VStack
            .padding()
            
            Form {
                // MARK: - General Settings
                Section(header: Text("General Settings")) {
                    
                    Toggle(isOn: $enableNotification) {
                        Text("Enable notification")
                    }
                    
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background refresh")
                    }
                } //: General Settings
                
                // MARK: - Application
                Section(header: Text("Application")) {
                    if enableNotification {
                        HStack {
                            Text("Product").foregroundColor(.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        
                        HStack {
                            Text("Compatibility").foregroundColor(.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        
                        HStack {
                            Text("Developer").foregroundColor(.gray)
                            Spacer()
                            Text("Alex")
                        }
                        
                        HStack {
                            Text("Designer").foregroundColor(.gray)
                            Spacer()
                            Text("Robert Petras")
                        }
                        
                        HStack {
                            Text("Website").foregroundColor(.gray)
                            Spacer()
                            Text("swiftuimasterclass.com")
                        }
                        
                        HStack {
                            Text("Version").foregroundColor(.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal message").foregroundColor(.gray)
                            Spacer()
                            Text("Happy Coding!")
                        }
                    }
                    
                }
                
            } //: Form
            
        } //: VStack
        .frame(maxWidth: 640)
    }
}

// MARK: - Preview

struct SettingsTabItemView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsTabItemView()
    }
}
