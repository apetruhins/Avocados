//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Alex on 12/07/2022.
//

import SwiftUI

struct RipeningTabItemView: View {
    
    // MARK: - Properties
    
    // MARK: - Body
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningData) { ripening in
                        RipeningView(ripening: ripening)
                    } //: ForEach
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                
                Spacer()
            } //: VStack
        } //: ScrollView
        .edgesIgnoringSafeArea(.all)
    }
}

// MARK: - Preview

struct RipeningTabItemView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningTabItemView()
    }
}
