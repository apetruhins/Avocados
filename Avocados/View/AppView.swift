//
//  AppView.swift
//  Avocados
//
//  Created by Alex on 12/07/2022.
//

import SwiftUI

struct AppView: View {
    
    // MARK: - Properties
    
    // MARK: - Body
    
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocados")
                }
            
            RecipesView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }
            
            RipeningView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
                }
            
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }
            
        } //: TabView
        .edgesIgnoringSafeArea(.top)
        .accentColor(.primary)
    }
}

// MARK: - Preview

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
