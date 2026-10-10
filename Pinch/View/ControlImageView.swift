//
//  ControlImageView.swift
//  Pinch
//
//  Created by Swantan Barua on 08/10/26.
//

import SwiftUI

struct ControlImageView: View {
    
    // MARK: - PROPERTIES
    let icon: String
    
    // MARK: - BODY
    var body: some View {
        Image(systemName: icon)
            .font(.system(size: 40))
    }
}

#Preview {
    ControlImageView(icon: "minus.magnifyingglass")
        .preferredColorScheme(.dark)
        .previewLayout(.sizeThatFits)
        .padding()
}
