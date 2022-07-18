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
            AvocadosTabItemView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocados")
                }
            
            RecipesTabItemView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }
            
            RipeningTabItemView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
                }
            
            SettingsTabItemView()
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
