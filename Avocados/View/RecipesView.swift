//
//  ContentView.swift
//  Avocados
//
//  Created by Alex on 12/07/2022.
//

import SwiftUI

struct RecipesView: View {
    
    // MARK: - Properties
    
    
    
    // MARK: - Body
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
                // MARK: - Header
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headerData) { header in
                            HeaderView(header: header)
                        } //: ForEach
                    } //: HSTack
                } //: ScrollView
                
                // MARK: - Footer
                
                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(8)
                    
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                    
                } //: VStack
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
                
            } //: VStack
        } //: ScrollView
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

// MARK: - Preview

struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView()
    }
}
