//
//  AvocadosView.swift
//  Avocados
//
//  Created by Alex on 12/07/2022.
//

import SwiftUI

struct AvocadosTabItemView: View {
    
    // MARK: - Properties
    
    @State private var pulsateAnimation: Bool = false
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("avocado")
                .resizable()
                .scaledToFit()
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                .scaleEffect(self.pulsateAnimation ? 1 : 0.9)
                .opacity(self.pulsateAnimation ? 1 : 0.9)
                .animation(.easeInOut(duration: 1.5).repeatForever(), value: self.pulsateAnimation)
            
            VStack {
                Text("Avocados".uppercased())
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundColor(.white)
                    .padding()
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
                
                Text("Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!")
                    .lineLimit(nil)
                    .font(.system(.headline, design: .serif))
                    .foregroundColor(Color("ColorGreenLight"))
                    .multilineTextAlignment(.center)
                    .lineSpacing(8)
                    .frame(maxWidth: 640, minHeight: 120)
            } //: VStack
            .padding()
            
            Spacer()
        } //: VStack
        .background(
            Image("background")
                .resizable()
                .scaledToFill()
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            self.pulsateAnimation.toggle()
        }
    }
}

// MARK: - Preview

struct AvocadosTabItemView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosTabItemView()
            //.previewDevice("iPhone 13 Pro")
            //.environment(\.colorScheme, .dark)
    }
}
